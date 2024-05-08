import os
import json
import py7zr
import shutil
import argparse
import aiohttp
import asyncio
import aiofiles
from concurrent.futures import ProcessPoolExecutor

def zip_directory(data):
    dirToZip, version = data
    source_dir = f"packages/{dirToZip}"
    result_dir = f"temp/{source_dir}/v{version}"
    print(f"Starting to copy files from {source_dir} to {result_dir}...")
    shutil.copytree(source_dir, result_dir, dirs_exist_ok=True)
    print(f"Files copied successfully to {result_dir}.")
    archive_name = f"{os.path.dirname(result_dir)}/{dirToZip}.7z"
    print(f"Starting to create archive {archive_name}...")
    with py7zr.SevenZipFile(archive_name, mode='w') as z:
        z.writeall(result_dir, f"v{version}")
    print(f"Archive {archive_name} created successfully.")
    return archive_name

def prepare_zip_data(dir):
    manifest_path = f"packages/{dir}/manifest.json"
    with open(manifest_path, 'r') as f:
        manifest_data = json.load(f)
    version = manifest_data["sdk-version"]
    return (dir, version)

async def upload_release_asset(session, token, repo, tag_name, asset_path):
    print(f"Preparing to upload asset: {os.path.basename(asset_path)}...")
    headers = {'Authorization': f'token {token}', 'Content-Type': 'application/octet-stream'}
    release_url = f"https://api.github.com/repos/{repo}/releases/tags/{tag_name}"
    async with session.get(release_url, headers=headers) as response:
        response_data = await response.json()
        release_id = response_data['id']
    upload_url = f"https://uploads.github.com/repos/{repo}/releases/{release_id}/assets?name={os.path.basename(asset_path)}"
    async with aiofiles.open(asset_path, 'rb') as f:
        data = await f.read()
    async with session.post(upload_url, headers=headers, data=data) as response:
        result = await response.json()
    print(f"Upload completed for: {os.path.basename(asset_path)}.")
    return result

async def main(token, repo, tag_name):
    print("Number of CPU cores available:", os.cpu_count())
    
    dirs_to_process = os.listdir("./packages")
    print(f"Found directories: {dirs_to_process}")
    zip_data = [prepare_zip_data(dir) for dir in dirs_to_process]

    print("Starting parallel zipping...")
    with ProcessPoolExecutor() as executor:
        zip_paths = list(executor.map(zip_directory, zip_data))
    print("All zipping completed.")

    print("Starting uploads...")
    async with aiohttp.ClientSession() as session:
        upload_tasks = [upload_release_asset(session, token, repo, tag_name, path) for path in zip_paths]
        results = await asyncio.gather(*upload_tasks, return_exceptions=True)
        for result in results:
            print(result)
    print("All uploads completed.")

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Upload directories as release assets.")
    parser.add_argument("token", help="GitHub Token")
    parser.add_argument("repo", help="Repository name, e.g., 'username/repo'")
    parser.add_argument("tag_name", help="Tag name from the release")
    args = parser.parse_args()
    
    print("Starting the upload process...")
    asyncio.run(main(args.token, args.repo, args.tag_name))
    print("Upload process completed.")
