#!/bin/bash

gradle -v
if [ $? != 0 ]; then
    echo "gradle no instalado, instalando...";
    curl -s "https://get.sdkman.io" | bash
    sdk install gradle
fi

java --version
if [ $? != 0 ]; then
    echo "actualizando openjdk"
    sudo apt-cache search openjdk
    sudo apt install openjdk-17-jdk -y
fi

docker -v
if [ $? != 0 ]; then
    # Add Docker's official GPG key:
    echo "Instalando docker"
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources:
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update

    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
fi

az -v
if [ $? != 0 ]; then
    echo "Instalando azure cli"
    curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
fi

# Update system packages
# sudo apt update -y

# Install Java, Docker, and Gradle
# sudo apt install -y default-jdk docker.io gradle

# Add current user to the Docker group without sudo
# sudo usermod -aG docker $USER

# Enable and start Docker service
# sudo systemctl enable docker
# sudo systemctl start docker