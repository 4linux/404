#!/usr/bin/env bash

ARQUIVO=$1
DIR_PATH='/opt/'

echo "[$ARQUIVO] -> [$DIR_PATH]"
find / -name "$ARQUIVO" -exec cp {} "$DIR_PATH" \;

