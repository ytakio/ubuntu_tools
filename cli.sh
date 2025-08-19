#!/bin/bash -x
sudo systemctl stop gdm
sudo systemctl restart display-power.service
