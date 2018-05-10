#!/bin/sh
# Don't debug-print executed commands, silence docker warning
set +x
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
