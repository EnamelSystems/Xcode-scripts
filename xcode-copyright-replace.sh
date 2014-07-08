#! /bin/sh
##
## Replace Xcode header template's copyright with ${COPYRIGHT}
##
#XCODE=Xcode
XCODE=Xcode6-Beta3

## Copyright string.
COPYRIGHT="Copyright (c) 2014 Enamel Systems. All rights reserved."

## Base directory which has Xcode header template.
BASE="/Applications/${XCODE}.app/Contents/Developer"

## Template directories
TEMPLATE="${BASE}/Library/Xcode/Templates \
          ${BASE}/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates"

## Directory check.
for i in ${TEMPLATE}
do
if [ ! -d $i ];then
  echo "$i does not exists."
  echo "Please check XCODE variable in the script."
  exit 1
fi
done

## Initialization.
if [ x"$1" = x"-i" ];then
  for i in ${TEMPLATE}
  do
    echo "git init ${i}..."
    cd ${i}
    if [ ! -d ./.git ];then
      sudo git init
      sudo git add .
      sudo git commit -m 'Initial commmit'
    fi
  done
  exit 0
fi

## Check that directory has .git.
for i in ${TEMPLATE}
do
if [ ! -d $i/.git ];then
  echo "git repository has not yet configured: $i."
  echo "Please execute $0 -i" first.
  exit 2
fi
done

## Ok, restore the original file.
for i in ${TEMPLATE}
do
echo "Checking out ${i}..."
cd ${i}
sudo git checkout .
done

## Now replace the Copyright description.
for i in ${TEMPLATE}
do
echo "Replacing copyright ${i}..."
cd ${i}
sudo find * -type f -exec perl -pi -e "s/___COPYRIGHT___/  ${COPYRIGHT}/" {} \;
done
