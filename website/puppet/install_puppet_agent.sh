#!/bin/bash
wget https://apt.puppet.com/puppet7-release-jammy.deb
sudo dpkg -i puppet7-release-jammy.deb
sudo apt update
sudo apt install -y puppet-agent
