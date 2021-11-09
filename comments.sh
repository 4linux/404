#!/usr/bin/env bash

echo "Sou um comando"
# echo "Sou um comentário"


<<'COMMENTS'
  printf "ola"
  echo "sou um comentario multilinha"
adasda
das
da
d

COMMENTS

echo "Sou um comando denovo"

# TODO: criar função de analisar o backup

# FIXME: resolver bug de utf-8 

