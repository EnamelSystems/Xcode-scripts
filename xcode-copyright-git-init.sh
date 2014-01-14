#! /bin/sh

XCODE=Xcode
#XCODE=Xcode51-Beta3

BASE="/Applications/${XCODE}.app/Contents/Developer"

for i in ${BASE}/Library/Xcode/Templates \
         ${BASE}/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates
do
echo "git init ${i}..."
cd ${i}
if [ ! -d ./.git ];then
  sudo git init
  sudo git add .
  sudo git commit -m 'Initial commmit'
fi
done
