#!/usr/bin/env bash
#
# $ ./exercicio3.sh - Recebe um arquivo como parametro e imprime seu conteudo na tela
#
# Site: 4linux.com.br
# Autor: Gabriel Melo
# Manutenção: Gabriel Melo
# ----------------------------------------------------
# Este programa recebe como parâmetro um arquivo e
# imprime seu conteudo na tela
#
# Exemplo:
#
# $ ./exercicio3.sh


ARQUIVO=$1

if [[ -f $ARQUIVO ]]
then
   tput setaf 3
   cat $ARQUIVO
   tput setab 2
   tput sgr0
   tput setaf 10
   echo "Sucesso"
   tput sgr0
else
   tput setaf 1
   echo "Erro"
   tput sgr0
fi
