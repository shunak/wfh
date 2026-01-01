#!/bin/bash
if [ $# != 2 ]; then
  echo "Error: Need your GitHub Username and Repository's visibility, input Username as a first argument and Repository's visibility public or private as a second argument." $*
  exit 1
else
  echo "Start creating a New Repository to your GitHub..."
fi

reposname=$(pwd | awk -F"/" '{print $NF}')

if [ $2 = "public" ]; then
  curl -H "Authorization: token $GITHUB_PAT" https://api.github.com/user/repos -d '{"name":"'$reposname'","description":"This repository is originally from my local directory."}'
elif [ $2 = "private" ]; then
  curl -H "Authorization: token $GITHUB_PAT" https://api.github.com/user/repos -d '{"name":"'$reposname'","description":"This repository is originally from my local directory.","private":"true"}'
else
  echo "Error: Give your GitHub Repository's visibility as a second argument, input public or private."
  exit 1
fi

touch README.md
echo "Now Editing..." >>README.md
touch .gitignore
touch .env

# --- System & OS ---
echo ".DS_Store" >>.gitignore
echo "Thumbs.db" >>.gitignore
echo "Desktop.ini" >>.gitignore

# --- Editor & IDE ---
echo ".vscode/" >>.gitignore
echo ".idea/" >>.gitignore
# Vim/Neovim (Swap files & Sessions)
echo "*.swp" >>.gitignore
echo "*.swo" >>.gitignore
echo "Session.vim" >>.gitignore

# --- Dependency & Logs ---
echo "node_modules/" >>.gitignore
echo "*.log" >>.gitignore
echo "npm-debug.log*" >>.gitignore
echo "yarn-error.log*" >>.gitignore

# --- Build & Runtime ---
echo "dist/" >>.gitignore
echo "build/" >>.gitignore
echo "coverage/" >>.gitignore
echo ".next/" >>.gitignore # Next.jsを使う可能性があるなら

# --- Security & Secrets ---
echo ".env" >>.gitignore
echo "*.env" >>.gitignore
echo "token.pickle" >>.gitignore
echo "*.pem" >>.gitignore
echo "*.key" >>.gitignore

rm ./wfh.sh

git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:$1/${reposname}.git
git push -u origin main
