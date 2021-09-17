#!/bin/bash
set -e

cd 1.7
docker build -t 635930426519.dkr.ecr.us-east-1.amazonaws.com/fluentd:1.7-cri-fix .

export AWS_PROFILE=personal-aws-convox-test
aws ecr get-login-password | docker login --username AWS --password-stdin 635930426519.dkr.ecr.us-east-1.amazonaws.com

docker push 635930426519.dkr.ecr.us-east-1.amazonaws.com/fluentd:1.7-cri-fix
