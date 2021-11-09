#!/bin/bash

branch=$1

make node

if [ "$branch" == "master" ]; then
    version=$(head -n 1 Dockerfile_node | grep -Po "FROM node:\K.+")
    docker tag landtech/ci-node "landtech/ci-node:$version"
    docker push landtech/ci-node
    docker push "landtech/ci-node:$version"
fi
