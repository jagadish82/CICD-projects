#!/bin/bash

# Installation GIT
yum install git -y

# Installation Jenkins

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/rpm-stable/jenkins.repo
sudo dnf upgrade
# Add required dependencies for the Jenkins package
sudo dnf install  java-21
sudo dnf install jenkins
sudo systemctl daemon-reload

systemctl enable jenkins
systemctl start jenkins

# Docker installation
#dnf install docker -y
#systemctl enable docker
#systemctl start docker
#Docker installation
dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
systemctl enable docker.service
systemctl start docker.service
systemctl status docker.service
docker --version

# kind Cluster Creation

#curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
#chmod +x kubectl
#sudo mv kubectl /usr/local/bin/
#kubectl version --client

# Install Kind

#curl -Lo ./kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64
#chmod +x kind
#sudo mv kind /usr/local/bin/
#kind version

