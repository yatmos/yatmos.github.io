#!/bin/bash

echo -e "Deploying updates to GitHub..."

# Build the project.
./hugo -t hugo-universal-theme # if using a theme, replace with `hugo -t <YOURTHEME>`

cp CNAME docs/

# Add changes to git.
git add -f *

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"


# Push source and build repos.
# git push origin +master
git push -u origin master
