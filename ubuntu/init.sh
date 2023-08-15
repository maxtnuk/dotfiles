#!/bin/bash
export DEBIAN_FRONTEND=noninteractive 
export TZ=Asia/Seoul 

apt update
apt install software-properties-common -y
apt install -y build-essential curl wget unzip vim git 

add-apt-repository ppa:deadsnakes/ppa -y
apt update

# install bash it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
