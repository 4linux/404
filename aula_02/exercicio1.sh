#!/bin/bash
#
# exercicio1.sh - Realiza a conversão de letras minusculas para maiúsculas
#
#
# Site: 4linux.com.br
# Autor: Gabriel Melo
# Manutenção: Gabriel Melo

# -------------------------------------------
# Este programa recebe como parametro um nome e sobrenome
# e substitui as letras para maiúsculas
#
# Exemplo:
#
# $ ./exercicio1.sh Gabriel Melo


read -p "Digite seu nom e sobrenome: " NOME
tr a-z A-Z <<< $NOME 

