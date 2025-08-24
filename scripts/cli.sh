#!/bin/bash -x
sudo systemctl stop gdm
sudo systemctl restart getty@tty1
sudo systemctl restart display-power.service
