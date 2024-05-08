import os
import json
import py7zr
import shutil
import argparse
import aiohttp
import asyncio
import aiofiles

async def prepare_dir(source_dir, version):
    result_dir = f"temp/{source_dir}/v{version}"
    print(f"Copying files to {result_dir}...")
    shutil.copytree(source_dir, result_dir, dirs_exist_ok=True)
    print(f"Copied files to {result_dir}.")
    return result_dir

def read_manifest_version(manifest_path):
    with open(manifest_path, 'r') as f:
        manifest_data = json.load(f)
        return manifest_data["sdk-version"]

async def zip_dir(dirToZip):
    version = read_manifest_version(f"packages/{dirToZip}/manifest.json")
    result_dir = await prepare_dir(f"packages/{dirToZip}", version)
    archive_name = f"{os.path.dirname(result_dir)}/{dirToZip}.7z"
    print(f"Creating archive: {archive_name}...")
    with py7zr.SevenZipFile(archive_name, mode='w') as z:
        z.writeall(result_dir, f"v{version}")
    print(f"Archive created: {archive_name}")
    return archive_name

async def upload_release_asset(session, token, repo, tag_name, asset_path):
    print(f"Preparing to upload asset: {os.path.basename(asset_path)}...")
    headers = {'Authorization': f'token {token}'}
    release_url = f"https://api.github.com/repos/{repo}/releases/tags/{tag_name}"
    async with session.get(release_url, headers=headers) as response:
        response_data = await response.json()
        release_id = response_data['id']

    upload_url = f"https://uploads.github.com/repos/{repo}/releases/{release_id}/assets?name={os.path.basename(asset_path)}"
    headers['Content-Type'] = 'application/octet-stream'
    async with aiofiles.open(asset_path, 'rb') as f:
        data = await f.read()
    async with session.post(upload_url, headers=headers, data=data) as response:
        result = await response.json()
    print(f"Upload completed for: {os.path.basename(asset_path)}")
    return result

async def main(token, repo, tag_name):
    async with aiohttp.ClientSession() as session:
        tasks = []
        for dir in os.listdir("./packages"):
            print(f"Processing directory: {dir}")
            zip_task = asyncio.create_task(zip_dir(dir))
            zip_task.add_done_callback(
                lambda zip_future: tasks.append(
                    asyncio.create_task(
                        upload_release_asset(
                            session, token, repo, tag_name, zip_future.result()
                        )
                    )
                )
            )
        # Wait for all upload tasks to complete
        results = await asyncio.gather(*tasks)
        for result in results:
            print(result)

# Main execution
if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Upload directories as release assets.")
    parser.add_argument("token", help="GitHub Token")
    parser.add_argument("repo", help="Repository name, e.g., 'username/repo'")
    parser.add_argument("tag_name", help="Tag name from the release")
    args = parser.parse_args()

    print("Starting the package process...")
    asyncio.run(main(args.token, args.repo, args.tag_name))
    print("Package process completed.")
