#!/bin/bash

function clone() {
git clone https://github.com/LondheShubham153/django-notes-app.git

}

function install_req() {
sudo apt-get update && sudo apt-get install nginx docker.io -y
sudo gpasswd -a $USER docker
newgrp docker
}

function deploy() {
	cd django-notes-app
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "##################DEployment Started###########################"

if ! clone; then
	echo "file already exists"
	
fi
if ! install_req; then
	echo "installation failed"
	
fi
deploy
echo "########################Deployment Stopped############################"

