#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y vim \
		     curl \
                     wget \
                     sl \
                     zip \
                     unzip \
                     rar \
                     unrar \
                     zsh \
		     vlc \
	             neofetch \
 		     python3-pip \
 		     mysql-server \
		     nginx \
		     htop \
		     gnome-tweaks \
 		     git \
		     net-tools \
		     dnsutils \
                     apt-transport-https \
                     ca-certificates \
                     gnupg-agent \
                     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo apt-get install -y docker-compose
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
sudo reboot
