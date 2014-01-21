#! /bin/sh

XCODE=Xcode
#XCODE=Xcode51-Beta4

BASE="/Applications/${XCODE}.app/Contents/Developer"

for i in ${BASE}/Library/Xcode/Templates \
         ${BASE}/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates
do
echo "Checking out ${i}..."
cd ${i}
sudo git checkout .
done
