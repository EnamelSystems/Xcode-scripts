Xcode-scripts
=============

Xcode related scripts.  Here are utility script for Xcode development such as removing local project froms git repository, replace Xcode header template's copyright description and ignoring Emacs '^X^S' keystroke to avoid mis operation.

Remove Xcode local project files from git
-----------------------------------------

By default, when a new Xcode project is created with git repository, it adds local project files to git.
Executing xcode-remove-local-project-from-git.sh at the top directory of the project which includes .git will remove these unnecessary files from git.

```
./xcode-remove-loadl-project-from-git.sh
```
