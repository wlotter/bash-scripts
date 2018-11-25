#!/bin/bash

containers=$(docker ps -a -q)
docker rm $containers # should only remove non-running containers...

untaggedImages=$(docker images | awk '$2=="<none>" {print $3}')
docker rmi $untaggedImages
