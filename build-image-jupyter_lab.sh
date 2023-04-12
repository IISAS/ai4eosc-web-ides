#!/usr/bin/env bash

TF_TAG=${TF_TAG:-'2.10.1-gpu'}

docker pull tensorflow/tensorflow:${TF_TAG}
docker build . \
 -f Dockerfile.jupyter_lab \
 -t iisas/jupyter_lab:latest \
 -t iisas/jupyter_lab:tf-${TF_TAG} \
 --build-arg TF_TAG=${TF_TAG}
