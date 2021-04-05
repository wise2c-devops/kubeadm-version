#!/bin/bash

# kudos https://dev.to/zeerorg/build-multi-arch-docker-images-on-travis-5428

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

# Build for amd64 and push
buildctl build --frontend dockerfile.v0 \
            --local dockerfile=. \
            --local context=. \
            --output type=image,name=wise2c/kubeadm-version:v1.20.5-amd64,push=true \
            --opt platform=linux/amd64 \
            --opt filename=./Dockerfile.amd64


# Build for arm64 and push
buildctl build --frontend dockerfile.v0 \
            --local dockerfile=. \
            --local context=. \
            --output type=image,name=wise2c/kubeadm-version:v1.20.5-arm64,push=true \
            --opt platform=linux/arm64 \
            --opt filename=./Dockerfile.aarch64


export DOCKER_CLI_EXPERIMENTAL=enabled

# Create manifest list and push that
# 1.20.5
docker manifest create wise2c/kubeadm-version:v1.20.5 \
            wise2c/kubeadm-version:v1.20.5-amd64 \
            wise2c/kubeadm-version:v1.20.5-arm64

docker manifest annotate wise2c/kubeadm-version:v1.20.5 wise2c/kubeadm-version:v1.20.5-arm64 --arch arm64
docker manifest annotate wise2c/kubeadm-version:v1.20.5 wise2c/kubeadm-version:v1.20.5-amd64 --arch amd64

docker manifest push wise2c/kubeadm-version:v1.20.5

# latest
docker pull wise2c/kubeadm-version:v1.20.5
docker pull wise2c/kubeadm-version:v1.20.5-amd64
docker pull wise2c/kubeadm-version:v1.20.5-arm64
docker tag wise2c/kubeadm-version:v1.20.5 wise2c/kubeadm-version:latest
docker tag wise2c/kubeadm-version:v1.20.5-amd64 wise2c/kubeadm-version:latest-amd64
docker tag wise2c/kubeadm-version:v1.20.5-arm64 wise2c/kubeadm-version:latest-arm64
docker push wise2c/kubeadm-version:latest
docker push wise2c/kubeadm-version:latest-arm64
docker push wise2c/kubeadm-version:latest-amd64

docker manifest create wise2c/kubeadm-version:latest \
            wise2c/kubeadm-version:latest-amd64 \
            wise2c/kubeadm-version:latest-arm64

docker manifest annotate wise2c/kubeadm-version:latest wise2c/kubeadm-version:latest-arm64 --arch arm64
docker manifest annotate wise2c/kubeadm-version:latest wise2c/kubeadm-version:latest-amd64 --arch amd64

docker manifest push wise2c/kubeadm-version:latest
