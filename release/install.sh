#!/bin/bash

mkdir -p /tmp/honeybee

curl -fsSL https://github.com/iobond/HoneyBee/raw/master/release/honeybee.service.tar.gz > /tmp/honeybee.service.tar.gz
tar xf /tmp/honeybee.service.tar.gz -C /tmp/honeybee/

sudo mkdir -p /root/.honeybee/
sudo cp /tmp/honeybee/honeybee /root/.honeybee/
sudo cp /tmp/honeybee/honeybee.yaml /root/.honeybee/
sudo cp /tmp/honeybee/honeybee.service /lib/systemd/system/

service honeybee stop
sudo systemctl disable honeybee
sudo systemctl daemon-reload
sudo systemctl enable honeybee
sudo service honeybee start
systemctl status honeybee
