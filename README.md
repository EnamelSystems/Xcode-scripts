Xcode-scripts
=============

Here are utility script for Xcode development.  Removing local project
files from git repository, replacing Xcode header copyright
description and ignoring Emacs's ^X^S keystroke to avoid
mis-operation.

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
$ xcode-remove-local-project-from-git.sh
```

Replace copyright description in the Xcode templates
----------------------------------------------------

Xcode automatically insert file's header description based upon File
Templates.

```shell
$ xcode-copyright-git-init.sh
$ xcode-copyright-original-checkout.sh
$ xcode-copyright-replace.sh
```

Disabling Xcode Emacs ^X^S keystroke
------------------------------------

For emacs users, it is very common to press ^X^S keystroke during
editiong.  By default, Xcode puts strange character to the editing
buffer.  To avoid the mis-operation, Emacs.idekeybindings reassign
^X^S to "mark buffer" operation.  To reflect the change, please copy
Emacs.idekeybindings to
~/Library/Developer/Xcode/UserData/KeyBindings/.

```
$ cp Emacs.idekeybindings ~/Library/Developer/Xcode/UserData/KeyBindings/
```

Then Xcode->Preferences->Key Bindings menu, select Emacs from "Key
Bindings Set" dropdown menu.  After that you will see that ^X^S just
mark the buffer.
