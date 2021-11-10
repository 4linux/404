#!/usr/bin/env bash
#
# $ ./exercicio2.sh - Recebe um nome e imprime com a coloração diferente no meio da tela
#
# Site: 4linux.com.br
# Autor: Gabriel Melo
# Manutenção: Gabriel Melo
# ----------------------------------------------------
# Este programa recebe como parâmetro um arquivo e
# conta as palavras caracteres e linhas do mesmo.
#
# Exemplo:
#
# $ ./exercicio2.sh


tput setaf 2
echo "Digite seu nome: "
tput setaf 3
read NOME
tput sgr0

echo -e "O nome digitado foi: \033[31;1;5m   \033[50G ${NOME} \033[m"
