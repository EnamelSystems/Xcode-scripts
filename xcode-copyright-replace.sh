#! /bin/sh
##
## Replace Xcode header template's copyright with ${COPYRIGHT}
##
XCODE=Xcode
XCODE=Xcode6-Beta2

## Copyright string.
COPYRIGHT="Copyright (c) 2014 Enamel Systems. All rights reserved."

## Base directory which has Xcode header template.
BASE="/Applications/${XCODE}.app/Contents/Developer"

for i in ${BASE}/Library/Xcode/Templates \
         ${BASE}/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates
do
echo "Replacing copyright ${i}..."
cd ${i}
sudo find * -type f -exec perl -pi -e "s/___COPYRIGHT___/  ${COPYRIGHT}/" {} \;
done
