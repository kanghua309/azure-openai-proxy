#!/bin/bash

set -e

VERSION=v1.1.0

rm -rf bin

#export GOOS=darwin
#export GOARCH=arm64
go build -trimpath -ldflags "-s -w" -o bin/azure-openai-proxy ./cmd

#docker build -t stulzq/azure-openai-proxy:$VERSION .
