#!/bin/bash

apt update

if ! [ -x "$(command -v netstat)" ]; then
  apt-get install net-tools -y
fi

if ! [ -x "$(command -v git)" ]; then
  apt-get install git -y
fi

if ! [ -x "$(command -v python)" ]; then
  apt-get install python -y
fi

if ! [ -x "$(command -v vim)" ]; then
  apt-get install python -y
fi

if ! [ -x "$(command -v ctags)" ]; then
  apt-get install ctags -y
fi

pushd /tmp
git clone https://github.com/henrywoo/linux_setting.git
cd linux_setting
python run.py
cd ..
rm -fr linux_setting
popd

