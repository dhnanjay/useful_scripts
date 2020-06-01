#!/bin/bash
# Start CUDA Docker Script

apt-get update
apt-get upgrade
apt-get install curl
apt-get install python
apt-get install python3.7
ln -s /usr/bin/python3.7 /usr/bin/python3
apt-get install python3-distutils 
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py 
python3 get-pip.py
apt-get install jupyter
jupyter notebook --generate-config
jupyter notebook password
nohup jupyter notebook --ip 0.0.0.0 --no-browser --allow-root &
