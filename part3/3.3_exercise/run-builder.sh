#!/bin/bash

docker build -t builder .
docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock --privileged builder
