#!/bin/bash

# $ ./2-script-while.sh - Enquanto não for passado um usuário válido ele solicita
#                         o nome de um usuário válido
#
# Site: 4linux.com.br
# Autor: Gabriel Melo
# Manutenção: Gabriel Melo
# ----------------------------------------------------
#
# Exemplo:
#
# $ ./2-script-while.sh

USUARIO='Junim'

<<'COMMENTS'
until cut -d':' -f1 /etc/passwd | grep -w $USUARIO
do
  echo "Usuario invalido"
  read -p "Digite o nome de um usuario do sistema" USUARIO
done
COMMENTS


until $(getent passwd $USUARIO)
do
  read -p "Digite o nome de um usuario: " USUARIO
  if [[ $(getent passwd $USUARIO) ]]
  then
    echo "Usuario valido"
    break
  else
    echo "Invalido"
  fi
done


