#!/bin/bash
# $ ./1-script-vars.h - Recebe em variáveis nome,email e telefone, e utilizando expansão de variáveis imprime o ddd, nome com primeira letra em maiuscula e domínio
#
# Site: 4linux.com.br
# Autor: Gabriel Melo
# Manutenção: Gabriel Melo
# ----------------------------------------------------
#
# Exemplo:
#
# $ ./1-script-vars.h

read -p "Digite seu nome: "     NOME
read -p "Digite seu telefone: " TELEFONE
read -p "Digite seu email: "    EMAIL

function converter(){
   echo -e "Nome: ${NOME^}\nDDD: ${TELEFONE: 0:2}\nDomínio: ${EMAIL##*@}"
}

converter
