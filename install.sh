#!/bin/bash

pushd /tmp
git clone https://github.com/henrywoo/linux_setting.git
cd linux_setting
python run.py
cd ..
rm -fr linux_setting
popd

