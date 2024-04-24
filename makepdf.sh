#!/bin/bash
echo "Transforming "$@
docker run -e MARP_USER="$(id -u):$(id -g)" --rm --init -v $PWD:/home/marp/app/ -e LANG=$LANG  marpteam/marp-cli marpteam/marp-cli:latest $@ --theme gaia --allow-local-files  --pdf
