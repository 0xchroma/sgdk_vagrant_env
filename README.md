# sgdk_vagrant_env
Vagrant script for creating a ready to roll Sega Genesis development environment

## What you are going to need:
* [VirtualBox](https://www.virtualbox.org/)
* [Git](https://git-scm.com/)
* [Vagrant](https://www.vagrantup.com/)
* SSH client. ([CMDER](http://cmder.net/) OR [Putty](http://www.chiark.greenend.org.uk/~sgtatham/putty/))
* IDE ([Qt Creator](https://www.qt.io/download-open-source/#section-8) - [VSCode](https://code.visualstudio.com/))

## Getting Started
* Install everything you need from above.
* open a command prompt|terminal
* 'git clone https://github.com/olibroken/sgdk_vagrant_env'
* 'cd sgdk_vagrant_env'
* 'vagrant up' (This is going to take atleast an hour to build the toolchain, follow the screen once completed).
* 'vagrant shh' if you have ssh support or create a session using PUTTY.
