#!/bin/bash

# Install Updates / Upgrades
sudo apt update -y 
sudo apt upgrade -y
sudo apt autoremove -y

# Install vscode
sudo apt install snap -y
sudo snap install code --classic

# Install virtualbox + ext
sudo apt reinstall virtualbox -y

wget https://download.virtualbox.org/virtualbox/6.1.50/Oracle_VM_VirtualBox_Extension_Pack-6.1.50.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.1.50.vbox-extpack --replace --accept-license=sha256

# Install vagrant
#wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
#echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update  -y
sudo apt install vagrant -y
sudo apt install -y linux-headers-$(uname -r) dkms

# other tools
sudo apt-get install python-passlib -y
sudo apt-get install -y expect
sudo apt install net-tools telnet nmap -y
sudo apt install linux-headers-generic -y
sudo apt-get install sshpass -y
sudo apt install python-pip -y
sudo apt-get install python3.10-venv -y
sudo apt install python3-pip -y
sudo pip install passlib
sudo apt install git -y 
sudo apt install terminator -y
sudo apt install gh -y
