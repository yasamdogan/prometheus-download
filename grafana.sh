#!/bin/bash 

sudo apt-get install -y apt-transport-https software-properties-common wget
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
sudo apt-get update
sudo apt-get install grafana=6.6.2

sudo systemctl enable grafana-server
sudo systemctl start grafana-server
sudo systemctl status grafana-server
