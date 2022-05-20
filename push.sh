#!/bin/bash

mkdir -p ${HOME}/android_kernel_xiaomi_laurel_sprout
cd ${HOME}/android_kernel_xiaomi_laurel_sprout
git init
git remote add micode https://github.com/MiCode/Xiaomi_Kernel_OpenSource
git fetch micode laurel-r-oss
git checkout -b laurel-r-oss micode/laurel-r-oss

curl -i -H "Authorization: token ${GH_TOKEN}" \
https://api.github.com/user/repos \
-d '{"name": "'"android_kernel_xiaomi_laurel_sprout"'","description": "'"laurel_sprout(Mi A3) R kernel source"'","private": false,"has_issues": true,"has_projects": false,"has_wiki": true}'

git push https://"${GH_TOKEN}"@github.com/endbugger/android_kernel_xiaomi_laurel_sprout.git "laurel-r-oss" --force


