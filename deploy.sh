#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi

git commit -m "$msg"
git push

printf "\033[0;32mDeploying updates to GitHub done.\033[0m\n"

####################################################################3

printf "\033[0;32mDeploying blog source to GitHub...\033[0m\n"
# commit blg source
cd ..
git add .
git commit -m "$msg"
git push 
printf "\033[0;32mDeploying blog source to GitHub done.\033[0m\n"
