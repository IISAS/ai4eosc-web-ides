#!/usr/bin/env bash

TF_TAG=${TF_TAG:-'2.10.1-gpu'}
VSCODE_TAG=${VSCODE_TAG:-'v4.11.0'}

docker pull tensorflow/tensorflow:${TF_TAG}
docker build . \
 -f Dockerfile.vscode \
 -t iisas/vscode:latest \
 -t iisas/vscode:${VSCODE_TAG}-tf-${TF_TAG} \
 --build-arg TF_TAG=${TF_TAG} \
 --build-arg VSCODE_TAG=${VSCODE_TAG}
