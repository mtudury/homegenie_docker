#!/bin/bash

source latest_version.sh
docker run -d -p 80:80 --restart unless-stopped -v /etc/localtime:/etc/localtime:ro --name=homegenie_new homegenie:${dhgversion}
