#!/bin/bash

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get install -y docker-ce

read -p "Executing the Docker Command Without Sudo? [Y/n]" yn

if [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
    echo "Bye"
else
    sudo usermod -aG docker ${USER}  
    echo "logout and login again to make it effective"
fi

echo "Done!"