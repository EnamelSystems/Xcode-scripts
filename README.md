Xcode-scripts
=============

Here are utility script for Xcode development.  Removing local project
froms git repository, replacing Xcode header template's copyright
description and ignoring Emacs's ^X^S keystroke to avoid mis-operation
and so on.

Remove Xcode local project files from git
-----------------------------------------

By default, when a new Xcode project is created with git repository,
it adds local project files to git automatically.  This is very
annoying when we are developing the project with other engineers.

Executing xcode-remove-local-project-from-git.sh at the top directory
of the project which includes .git will remove local project files
such as below file from git repository.

<pre>
${PROJECT}.xcodeproj/project.xcworkspace/contents.xcworkspacedata
${PROJECT}.xcodeproj/xcuserdata/${USER}.xcuserdatad/xcschemes/${PROJECT}.xcscheme
${PROJECT}.xcodeproj/xcuserdata/${USER}.xcuserdatad/xcschemes/xcschememanagement.plist
</pre>

To run the script, please change directory to the top level of the
Xcode project then execut xcode-remove-local-project-from-git.sh

```shell
$ cd ProjectDir
$ ~/xcode-remove-local-project-from-git.sh
```

Replace copyright description of the Xcode templates
----------------------------------------------------

Xcode automatically insert file's header description based upon File
Templates.

Xcode disabling Emacs ^X^S keystroke
------------------------------------

For emacs users, it is very common to press ^X^S for saving files.  In
Xcode it puts strange character to the editing buffer.  To avoid the
mis-operation, Emacs.idekeybindings is reassign ^X^S to mark buffer.

```
$ cp Emacs.idekeybindings ~/Library/Developer/Xcode/UserData/KeyBindings/
```
