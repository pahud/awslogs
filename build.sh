#!/bin/sh

IMAGE_NAME="pahud/awslogs"


docker build  -t  ${IMAGE_NAME} .

echo "${IMAGE_NAME} built successfully"
