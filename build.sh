#! /bin/bash
set -e
docker stop $(docker ps -aq) || true
docker rm  $(docker ps -aq) || true
docker build -t reactjs-demo

