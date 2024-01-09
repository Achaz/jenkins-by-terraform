#!/bin/bash
sudo amazon-linux-extras install epel -y
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo  https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
yum upgrade -y
sudo dnf install java-11-amazon-corretto -y
sudo yum install jenkins -y
sudo service jenkins start
sudo systemctl enable jenkins --now
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
sudo usermod -a -G docker jenkins