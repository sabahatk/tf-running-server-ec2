#!/bin/bash
sudo dnf update -y
sudo dnf install -y httpd
sudo dnf install -y firewalld
sudo dnf install -y nano

sudo systemctl start httpd
sudo systemctl enable httpd

sudo systemctl start firewalld
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload
