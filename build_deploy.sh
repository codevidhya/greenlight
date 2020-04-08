#!/bin/bash

docker-compose down
./scripts/image_build.sh codevidhya release-v2
docker-compose up -d
systemctl restart nginx
