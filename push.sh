#!/bin/bash

cd ${HOME}
git clone --depth=1 https://github.com/AndroidDumps/dumpyara
cd dumpyara
bash setup.sh
sudo apt install aria2
aria2c https://bigota.d.miui.com/V12.0.22.0.RFQMIXM/laurel_sprout_global_images_V12.0.22.0.RFQMIXM_20220410.0000.00_11.0_52cedbee59.tgz
sed -i 's/ORG=AndroidDumps/ORG=endbugger/g' dumpyara.sh
sed -i 's/orgs/user/g' dumpyara.sh
bash dumpyara.sh laurel_sprout_global_images_V12.0.22.0.RFQMIXM_20220410.0000.00_11.0_52cedbee59.tgz "${GH_TOKEN}"
