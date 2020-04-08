#!/bin/bash

docker-compose down
git pull origin custom-changes
./scripts/image_build.sh codevidhya release-v2
docker-compose up -d
systemctl restart nginx
