#!/bin/sh

PWD=`pwd`
BASE_NAME="${PWD##*/}"
IMAGE_NAME="${BASE_NAME#*-}"


docker build  -t  ${IMAGE_NAME} .

echo "${IMAGE_NAME} built successfully"
