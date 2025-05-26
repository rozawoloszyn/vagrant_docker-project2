#!/bin/bash
# instaluje Dockera
sudo apt update
sudo apt install -y docker.io docker-compose

# uruchamia Docker Compose (obraz dockera)
cd /vagrant
sudo docker-compose up -d --build
