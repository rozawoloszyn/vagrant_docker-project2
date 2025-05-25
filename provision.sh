#!/bin/bash

# Aktualizacja pakietów
sudo apt-get update

# Instalacja Dockera
sudo apt-get install -y docker.io docker-compose

# Start i włączenie dockera
sudo systemctl start docker
sudo systemctl enable docker

# Budowa i uruchomienie kontenera z aplikacją Node.js
cd /vagrant
sudo docker-compose up -d --build
