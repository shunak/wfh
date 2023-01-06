# wfh
Create a remote repository directly from your local folder to GitHub.
<br>
<br>

### Get a GitHub Personal access token
Choose Personal access token (classic) <br>
Create from here -> https://github.com/settings/tokens
<br>
<br>

### Set the Personal access token as a environment variable
Set the Personal access token as a environment variable of your local shell, with naming $GITHUB_PAT
(If you are already using the environment variable name $GITHUB_PAT, change it to other name, sorry. )
<br>
<br>

### Install
```
git clone https://github.com/shunak/wfh.git
```

### How to use
```
cd wfh
```
```
cp wfh.sh ../folder_you_wanna_upload_to_GitHub_as_a_New_Repository
```
```
cd folder_you_wanna_upload_to_GitHub_as_a_New_Repository
```
Run (e.g. your shell is bash)
```
bash wfh.sh "Your GitHub User Name" "Your Repository's visibility public or private"
```
If you input your GitHub Username as first argument and Your Repository's visibility as second argument,<br>
it will create New Repository named with current folder name so, set your directory's name what you want to name. <br>

Operation Checked@ bash, zsh

