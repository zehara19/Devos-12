#!/bin/bash
echo "Please find below list of images"
docker images
echo "Now we will build container of the image and run it on 9090 port of the host machine"
docker run -d -p 9090:80 rohithbuildapp:latest
