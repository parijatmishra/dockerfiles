#!/bin/bash
set -e

echo "Building 3.7/alpine-3.8"
echo "***********************"
pushd 3.7/alpine-3.8
docker build -t python-cfn-lint:py-3.7-alpine-3.8 .
docker tag python-cfn-lint:py-3.7-alpine-3.8 parijatmishra/python-cfn-lint:py-3.7-alpine-3.8
docker push parijatmishra/python-cfn-lint:py-3.7-alpine-3.8
popd

# Tag latest version
docker tag python-cfn-lint:py-3.7-alpine-3.8 python-cfn-lint:latest
docker tag python-cfn-lint:latest parijatmishra/python-cfn-lint:latest
docker push parijatmishra/python-cfn-lint:latest
