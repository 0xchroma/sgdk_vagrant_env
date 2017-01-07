#!/bin/sh

echo grabbing required updates
sudo apt-get update
sudo apt-get install -y build-essential texinfo unzip git
sudo apt-get clean
echo grabbing latest gendev
git clone https://github.com/kubilus1/gendev.git
cd gendev
echo Building gendev, this is going to take awhile
make
mkdir /vagrant_data/inc
cp -a /opt/toolchains/gen/m68k-elf/include/. /vagrant_data/inc/
mkdir /vagrant_data/skeleton
cp -a ~/gendev/sgdk/skeleton/. /vagrant_data/skeleton/
cat << "EOF"
OK!. If there were no errors, you should be ready to roll.
The 'data' directory should now contain everything you need to get started and is mirrored in the virtual machine at '/vagrant_data'.
The 'inc' directory is just for external IDE autocompletion and reference.
The 'skeleton' directory is an empty project template, copy this to start a new project.
The next step is to log into the env via SSH. (use 'vagrant ssh').
Building a project requires you to navigate to your project root ('/vagrant_data/project_name') and just run make.
EOF