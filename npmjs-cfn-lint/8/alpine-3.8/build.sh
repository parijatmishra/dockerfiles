#!/bin/bash
set -xe

docker build -t npmjs-cfn-lint:node-8.12.0-alpine-3.8 .
docker tag npmjs-cfn-lint:node-8.12.0-alpine-3.8 parijatmishra/npmjs-cfn-lint:node-8.12.0-alpine-3.8
docker push parijatmishra/npmjs-cfn-lint:node-8.12.0-alpine-3.8
