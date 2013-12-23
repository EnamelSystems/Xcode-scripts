Xcode-scripts
=============

Here are utility script for Xcode development.  For example removing local project froms git repository, replacing Xcode header template's copyright description and ignoring Emacs's ^X^S keystroke to avoid mis operation and so on.

Remove Xcode local project files from git
-----------------------------------------

By default, when a new Xcode project is created with git repository,
it adds local project files to git automatically.  This is very
annoying when we are developing the project with other engineers.

Executing xcode-remove-local-project-from-git.sh at the top directory
of the project which includes .git will remove these unnecessary local
project files such as:

<pre>
Project.xcodeproj/project.xcworkspace/contents.xcworkspacedata
Project.xcodeproj/xcuserdata/${USER}.xcuserdatad/xcschemes/Project.xcscheme
project.xcodeproj/xcuserdata/${USER}.xcuserdatad/xcschemes/xcschememanagement.plist
</pre>

from git repository.

```shell
./xcode-remove-loadl-project-from-git.sh
```

