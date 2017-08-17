#!/usr/bin/env bash

pushd /tmp
wget http://download.brother.com/welcome/dlf103361/brgenprintml2pdrv-4.0.0-1.armhf.deb
sudo dpkg -i brgenprintml2pdrv-*.armhf.deb
# Remove the printer created by the driver
sudo lpadmin -x BrGenPrintML2
sudo rm -f brgenprintml2pdrv-*.armhf.deb
popd