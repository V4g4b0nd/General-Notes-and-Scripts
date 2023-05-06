#!/bin/bash

# Fixing Warning: Pycurl is not compiled against Openssl. Wfuzz might not work correctly when fuzzing SSL sites

#need apt, pip and python
#donot forgot to chmod the file, chmod +x wfuzz-Openssl-fix.sh
sudo apt update
sudo apt-get install python3-pip

# remove the whole installed wfuzz and pycurl
sudo apt --purge remove python3-pycurl  
sudo apt-get purge wfuzz    
sudo pip uninstall wfuzz -y
#install the delow libraries

sudo apt install libcurl4-gnutls-dev librtmp-dev  -y   
sudo apt install libcurl4-openssl-dev libssl-dev -y 

#install the wfuzz from pip

sudo pip install wfuzz

#run wfuzz in terminal and we won't get the Openssl warning

wfuzz
