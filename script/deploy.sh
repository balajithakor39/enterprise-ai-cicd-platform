#!/bin/bash

docker stop myapp || true
docker rm myapp || true

docker pull balajithakor39/image-to-text-ai:latest

docker run -d \
--name myapp \
-p 8080:8080 \
balajithakor39/image-to-text-ai:latest
