#!/bin/bash

git clone https://github.com/libre-computer-project/libretech-raspbian-portability.git
cd libretech-raspbian-portability
sudo libretech-raspbian-portability/oneshot.sh aml-s905x-cc

sudo cp wlan0 /etc/network/interfaces.d/
