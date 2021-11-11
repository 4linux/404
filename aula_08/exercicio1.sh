#!/bin/bash
#
# $ ./1-script-grep.sh - busca em um arquivo que recebe como parametro as linhas que iniciam com Nome e finalizam com o
#                        e as linhas que iniciam com Telefone e finalizam com 9
#
# Site: 4linux.com.br
# Autor: Gabriel Melo
# Manutenção: Gabriel Melo
# ----------------------------------------------------
#
# Exemplo:
#
# $ ./1-script-grep.sh lista-telefones.txt


ARQUIVO=$1


egrep '^(n|N)ome.*o$' $ARQUIVO
egrep '^(T|t)elefone.*9$' $ARQUIVO
