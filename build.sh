#! /bin/bash
set -e
chmod +x build.sh
docker stop $(docker ps -aq) || true
docker rm $(docker ps -aq) || true
docker build -t reactjs-demo .
