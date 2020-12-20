#!/usr/bin/env bash

# create new project directory
echo "Project Name:"
read name
cd ~/Desktop/stuff/projects ##change this path to where you would like your project directories to be saved
mkdir $name
cd $name

# get project description
echo "project Description:"
read desc

# make initial commit with README file
git init
touch README.txt
git add README.txt
git commit -m "Initial project setup using script"

# Create GH repo using PyGithub
Python ~/Desktop/Stuff/Projects/Auto_GH_Project/auto_gh_repo.py $name $desc ##change this path to where you have the python script saved

#push repo to GH
git remote add origin https://github.com/GH_USERNAME_HERE/$name.git ##insert your usernamewhere promted in url
git branch -M main
git push -u origin main

# Completion Message
echo "Done!"
