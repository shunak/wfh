# homework
Create repository directly from your local folder to GitHub.
Accepted [New Github authentication policy](https://developer.github.com/changes/2020-02-14-deprecating-password-auth/)<br>
\* All password authentication will return a status code of 401 starting: November 13, 2020 at 16:00 UTC <br>

## Install
```
git clone https://github.com/shunak/homework.git
```
```
cd homework
```
```
cp homework.sh ../folder_you_wanna_upload_to_GitHub_as_a_New_Repository
```
```
cd folder_you_wanna_upload_to_GitHub_as_a_New_Repository
```
## How to use
run (e.g. your shell is bash)
```
bash homework.sh "Your GitHub User Name" "Your Repository's visibility public or private"
```
if you input your GitHub Username as first argument and Your Repository's visibility as second argument,<br>
it will create New Repository named with current folder name so, set your directory's name what you want to name. <br>

Operation Checked@ bash, zsh



