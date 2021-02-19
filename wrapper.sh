#!/bin/bash

IMAGE_NAME="guye1296/alpine-builder"

mkdir -p $PWD/out

docker run -v $PWD/out:/out -it $IMAGE_NAME
