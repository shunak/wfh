#!/bin/bash
if [ $# != 2 ]; then
    echo "Error: Need your GitHub Username and Repository's visibility, input Username as a first argument and Repository's visibility public or private as a second argument." $*
    exit 1
else
    echo "Start creating a New Repository on your GitHub..."
fi

reposname=$(pwd | awk -F"/" '{print $NF}')

if [ $2 = "public" ]; then
    curl -H "Authorization: token $GITHUB_PAT" https://api.github.com/user/repos -d '{"name":"'$reposname'","description":"This repository created from CLI on your local."}'
elif [ $2 = "private" ]; then
    curl -H "Authorization: token $GITHUB_PAT" https://api.github.com/user/repos -d '{"name":"'$reposname'","description":"This repository created from CLI on your local.","private":"true"}'
else
    echo "Error: Need your GitHub Repository's visibility as second argument, input public or private."
    exit 1
fi

touch README.md
echo "Now Editing..." >> README.md

rm ./wfh.sh

git init
git add .
git commit -m "first commit"
git branch -M master
git remote add origin https://github.com/$1/${reposname}.git
git push -u origin master



