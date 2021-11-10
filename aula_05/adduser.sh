#!/usr/bin/env bash

for USUARIO in $(cat users.txt)
do
 echo "$USUARIO" 
 useradd $USUARIO
done

