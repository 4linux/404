#!/bin/bash
#
#
# 1-script-array.sh - Recebe um array de distribuicoes e lista na tela
#
# Site: 4linux.com.br
# Autor: Gabriel Melo
# Manutenção: Gabriel Melo

# ----------------------------------------------------
# Este programa recebe um array de distribuicoes digitado pelo usuário e imprime com formatação
#
#
# Exemplo:
#
# $ ./1-script-array.sh

read -a DISTRIBUICOES -p "Digite suas distribuições: "

NUMERO_DISTROS=$(echo "${#DISTRIBUICOES[@]}")
LISTA_DISTROS=$(echo "${DISTRIBUICOES[@]}")


echo "Você digitou $NUMERO_DISTROS distribuições e são elas: $LISTA_DISTROS"
