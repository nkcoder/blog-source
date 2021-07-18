#!/bin/sh

# If a command fails then the deploy stops
set -e

if [ $# -ne 1 ]; then
  echo "commit message is required"
  exit 1
fi

printf "Deploying updates to GitHub...\n"

####################################################################3

printf "Deploying blog source to GitHub...\n"
# commit blg source
git add .
git commit -m "$1"
git push 
printf "Deploying blog source to GitHub done.\n"

####################################################################3

# Build the project.
hugo 

# Go To Public folder
cd public
git add .

# Commit changes.
msg="rebuilding site $(date)"

git commit -m "$msg"
git push

printf "Deploying updates to GitHub done.\n"

