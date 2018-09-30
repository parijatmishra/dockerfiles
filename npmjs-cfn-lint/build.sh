#!/bin/bash
set -xe
# Build NodeJS 8.x (Carbon) version with Alpine 3.8
pwd

echo "Building 8/alpine-3.8"
echo "***********************"
pushd 8/alpine-3.8
./build.sh
popd
echo "***********************"
# Other versions....

# Tag one with `latest`
echo "Tagging carbon-alpine"
echo "***********************"
docker tag npmjs-cfn-lint:node-8.12.0-alpine-3.8 npmjs-cfn-lint:carbon-alpine
docker tag npmjs-cfn-lint:node-8.12.0-alpine-3.8 parijatmishra/npmjs-cfn-lint:carbon-alpine
docker push parijatmishra/npmjs-cfn-lint:carbon-alpine
echo "***********************"