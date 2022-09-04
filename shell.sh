#!/bin/sh

echo " this is add && push commits to remote server "

#Ask for Username

echo "Enter your GitHub username: "

read username

#Ask for User Github's personal access token
echo "Enter your GitHub personal access token: "
read token

# Ask for repository name

echo "Enter repository name"

read repoName

# Check if repository exists at GitHub

#curl -k "https://api.github.com/repos/${username}/${repoName}.git"

parse_git_branch(){

        git symbolic-ref HEAD | cut -d"/" -f 3

}

git status

git add .

git commit -m " this is commit for $(parse_git_branch) "

echo $(parse_git_branch)

git merge feature1

git push origin $(parse_git_branch)






