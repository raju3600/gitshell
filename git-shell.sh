#!/bin/sh

# Shell Script to add all files, commit them with a commit message from user and then push them to remote GitHub repo

echo "*** Automating Git Add, Commit and Push ***"

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

curl -k "https://api.github.com/repos/${username}/${repoName}.git"

echo " find how many branches in the repo "

a= git branch -v

echo $a



	git status

	git remote set-url origin https://${token}@github.com/${username}/${repoName}.git

	 # If there are any uncommited and unstatged files, ask user to commit them
   
	if [ "$(git status --porcelain)" ]; then
        
		echo "There are uncommited and unstatged files. Commit them before pushing"
        
		echo "Enter commit message"
        
		read commitMessage
        
		git add .
        
		git commit -m "$commitMessage"
        
		git push origin feature4

        
		echo "Files pushed to GitHub"

	 else

        git checkout feature1

	git merge feature4

	echo " this checkout from f1 to f2"

	git checkout feature1

	git merge feature4

        #echo "Files nothing pushed to GitHub"

    fi

#echo $b


