#!/usr/bin/env bash

for USUARIO in $(< users.txt)
do
 deluser $USUARIO
done
