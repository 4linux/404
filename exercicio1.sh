#!/usr/bin/env bash

ARQUIVO=$1


echo "Quantidade de palavras: "; wc -w $ARQUIVO
echo "Quantidade de linhas: "; wc -l $ARQUIVO
echo "Quantidade de caracteres:"; wc -m $ARQUIVO
