#!/bin/bash

code_clone() {
        echo "Colning App"
        git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_req(){
        echo "Install dependency"
        sudo apt-get install docker.io nginx -y
}


required_restarts(){
        sudo chown $USER /var/run/docker.sock
        sudo systemctl enable docker
        sudo systemctl enable ngnix
        sudo systemctl restart docker
}

deploy(){
        docker build -t notes-app .
        docker run -d -p 800:8000 notes-app:latest
}


echo "*************DEPLOYMENT****************"
if ! code_clone; then
        cd django-notes-app
        echo "file exists"
fi
if ! install_req; then
        echo "installation failed"
        exit 1
fi
if ! required_restarts; then
        echo "error in required restart"
        exit 1
fi
deploy