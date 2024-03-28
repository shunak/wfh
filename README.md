# wfh
Create a remote repository directly from your local folder to GitHub without any some kind of Github CLI commands(gh).
<br>
<br>

### Get a GitHub Personal access token
Choose Personal access token (classic) <br>
Create from here -> https://github.com/settings/tokens
<br>
<br>

### Set the Personal access token as a your local shell's environment variable
Set the Personal access token as a environment variable of your local shell, with naming $GITHUB_PAT
(If you are already using the environment variable name $GITHUB_PAT, change it to other name, sorry. )
<br>
<br>

### Install
```
git clone https://github.com/shunak/wfh.git
```

### How to use
My useage example (Current directly is home and local folder which is push to Github directly from local(testrepos) is at same level directory.)

![fgh2](https://github.com/shunak/wfh/assets/16934074/980dc98b-6f6a-4362-8292-3077ef74d062)

```
cd testrepos
```
```
cp ../wfh/wfh.sh .
```
```
zsh wfh.sh shunak private
```
If you input your GitHub Username as first argument and Your Repository's visibility as second argument,<br>
it will create New Repository named with current folder name so, set your directory's name what you want to name. <br>

Check at the Github repository. Your local folder is pushed to Github.<br>
By this way, you can do easily and continuously uploading your local folder to Github without any Github commands.


Operation Checked@ bash, zsh

