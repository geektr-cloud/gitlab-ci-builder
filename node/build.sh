#!/usr/bin/env bash

image_version=$1

[ -z "$image_version" ] && { echo "pass a param as version tag"; exit; }

docker build \
  --tag "gcbuilder/node:$image_version" \
  --tag "gcbuilder/node:latest" \
  --compress \
  .

tee <<EOF
=========================
docker push gcbuilder/node
=========================
EOF
