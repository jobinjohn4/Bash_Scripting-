#!/bin/bash

clone() {

	echo "cloning the app"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_req() {
	sudo apt-get install docker.io nginx -y
	 sudo systemctl restart docker
}

deploy() {
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

if ! clone; then
	echo "Code exists"
	cd django-notes-app
fi
if ! install_req; then
	echo "failed"
	exit 1
fi
if ! deploy; then
	echo "erroe"
	exit 1
fi
