#!/usr/bin/env bash
# SPDX-License-Identifier: ISC

CUR_ROOT="$(cd "$( dirname "$0" )" >/dev/null && pwd)"
cd "${CUR_ROOT}"

# Create docker image
TAG="freight/xmllint"
docker build --tag=$TAG .
docker push $TAG
