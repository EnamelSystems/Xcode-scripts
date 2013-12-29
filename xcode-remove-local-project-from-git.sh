#! /bin/sh
##
## Remove Xcode's local project files from git.
## Execute once just after new Xcode project is created.
##
## Usage: xcode-remove-local-project-from-git.sh
##

## Current directory mus be top git repository
if [ ! -d ./.git ]; then
    echo "Must be executed at directory which includes .git"
    exit 1
fi

## Crete gitignore
echo "Create .gitignore"
cat >.gitignore <<EOF
##
## Xcode projects ignore files.
##
.DS_Store

##
## Xcode Project
##
**/*.xcodeproj/*
!**/*.xcodeproj/project.pbxproj
!**/*.xcodeproj/default.*

##
## Xcode Workspace
##
*.xcworkspace/*
!*.xcworkspace/contents.xcworkspacedata
EOF

## Add .gitignore
git add .gitignore
git commit -m "Add .gitignore"

## Remove local project files
echo "Removing local project files"
LIST=`git ls-files -i --exclude-from=.gitignore`

for i in $LIST
do
echo $i
git rm -f --cached $i
done

## Commit local removal.
git commit -m "Remove local project files from git"
