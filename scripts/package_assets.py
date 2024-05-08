import zipfile
import os
import requests
import json
import py7zr
import shutil

# def zip_dir(source_dir):
#     """Zip files in a directory with a specific extension."""
#     with zipfile.ZipFile(f"{source_dir}.zip", 'w', zipfile.ZIP_DEFLATED) as zipf:
        
#         for root, dirs, files in os.walk(f"packages/{source_dir}"):
#             for file in files:
#                 zipf.write(os.path.join(root, file),
#                             os.path.relpath(os.path.join(root, file), source_dir))
def prepare_dir(source_dir, version):
    result_dir = f"temp/{source_dir}/v{version}"
    shutil.copytree(source_dir, result_dir, dirs_exist_ok=True)
    return result_dir
    
def read_manifest_version(manifest_path):
    f = open(manifest_path)
    manifest_data = json.load(f)
    return manifest_data["sdk-version"]

def zip_dir(dirToZip):
    version = read_manifest_version(f"packages/{dirToZip}/manifest.json")
    result_dir = prepare_dir(f"packages/{dirToZip}", version)
    cwd = os.getcwd()
    os.chdir(result_dir)
    os.chdir("..")
    with py7zr.SevenZipFile(f"{dirToZip}.7z", mode='w') as z:
        z.writeall(f"v{version}")
       
    result_path = f"{os.getcwd()}/{dirToZip}.7z"
    os.chdir(cwd)
    
    return result_path

def upload_release_asset(token, repo, tag_name, asset_path):
    """Upload a release asset to a specific release based on tag name."""
    # Get release ID from tag name
    release_url = f"https://api.github.com/repos/{repo}/releases/tags/{tag_name}"
    headers = {'Authorization': f'token {token}'}
    response = requests.get(release_url, headers=headers)
    release_id = response.json()['id']

    # Upload asset
    upload_url = f"https://uploads.github.com/repos/{repo}/releases/{release_id}/assets?name={os.path.basename(asset_path)}"
    headers.update({'Content-Type': 'application/octet-stream'})
    with open(asset_path, 'rb') as f:
        data = f.read()
    response = requests.post(upload_url, headers=headers, data=data)
    return response.json()

# Main execution
if __name__ == '__main__':
    import sys
    token = sys.argv[1]  # GitHub Token
    repo = sys.argv[2]   # Repository name, e.g., 'username/repo'
    tag_name = sys.argv[3]  # Tag name from the release

    for dir in os.listdir("./packages"):
        result = upload_release_asset(token, repo, tag_name, zip_dir(dir))
        print(result)
        
        
    
    
