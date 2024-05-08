import zipfile
import os
import requests
import json
import py7zr
import shutil
import argparse
import aiohttp
import asyncio

async def prepare_dir(source_dir, version):
    result_dir = f"temp/{source_dir}/v{version}"
    print(f"Copying files to {result_dir} ...")
    shutil.copytree(source_dir, result_dir, dirs_exist_ok=True)
    return result_dir
    
def read_manifest_version(manifest_path):
    f = open(manifest_path)
    manifest_data = json.load(f)
    return manifest_data["sdk-version"]

async def zip_dir(dirToZip):
    version = read_manifest_version(f"packages/{dirToZip}/manifest.json")
    result_dir = prepare_dir(f"packages/{dirToZip}", version)
    archive_name = f"{os.path.dirname(result_dir)}/{dirToZip}.7z"
    # cwd = os.getcwd()
    # os.chdir(result_dir)
    # os.chdir("..")
    print(f"Creating {dirToZip}.7z")
    with py7zr.SevenZipFile(archive_name, mode='w') as z:
        z.writeall(result_dir, f"v{version}")
       
    result_path = f"{os.getcwd()}/{dirToZip}.7z"
    # os.chdir(cwd)
    
    return result_path

async def upload_release_asset(token, repo, tag_name, asset_path):
    """Upload a release asset to a specific release based on tag name."""
    # Get release ID from tag name
    release_url = f"https://api.github.com/repos/{repo}/releases/tags/{tag_name}"
    headers = {'Authorization': f'token {token}'}
    # response = requests.get(release_url, headers=headers)
    # release_id = response.json()['id']

    # # Upload asset
    # upload_url = f"https://uploads.github.com/repos/{repo}/releases/{release_id}/assets?name={os.path.basename(asset_path)}"
    # headers.update({'Content-Type': 'application/octet-stream'})
    # with open(asset_path, 'rb') as f:
    #     data = f.read()
    # print(f"Uploading {asset_path} file...")
    # response = requests.post(upload_url, headers=headers, data=data)
    # return response.json()
    async with session.get(release_url, headers=headers) as response:
        response_data = await response.json()
        release_id = response_data['id']

    upload_url = f"https://uploads.github.com/repos/{repo}/releases/{release_id}/assets?name={os.path.basename(asset_path)}"
    headers['Content-Type'] = 'application/octet-stream'
    with open(asset_path, 'rb') as f:
        data = f.read()
    async with session.post(upload_url, headers=headers, data=data) as response:
        return await response.json()

async def main(token, repo, tag_name):
    async with aiohttp.ClientSession() as session:
        tasks = []
        for dir in os.listdir("./packages"):
            zip_path = await zip_dir(dir)
            task = upload_release_asset(session, token, repo, tag_name, zip_path)
            tasks.append(task)
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
    
    token = args.token  # GitHub Token
    repo = args.repo   # Repository name, e.g., 'username/repo'
    tag_name = args.tag_name  # Tag name from the release
    asyncio.run(main(token, repo, tag_name))
    # for dir in os.listdir("./packages"):
    #     result = upload_release_asset(token, repo, tag_name, zip_dir(dir))
    #     print(result)
        
        
    
    
