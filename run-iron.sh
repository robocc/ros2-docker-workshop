#! /bin/bash

xhost +
docker run -d --name ros-tuto-iron -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --privileged -v "/dev/:/dev" -v `pwd`:/src -ti ros:iron
