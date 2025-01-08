#!/bin/bash

# Login into DockerHub:
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS

# Stopping existing container:
docker stop react
docker rm react

# Building the image:
docker build -t react-app .

# Running a container from the created image:
docker run -d -it --name react -p 80:80 react-app

# Pushing the image to DockerHub:
docker tag react-ci/cd mohamedibrahimm01/react-app
docker push mohamedibrahimm01/react-app


