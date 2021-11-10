#!/bin/bash

# $ ./1-script-while.sh - Enquanto a opção selecionada não for 0 ele continuar mostrando o menu
#
#
# Site: 4linux.com.br
# Autor: Gabriel Melo
# Manutenção: Gabriel Melo
# ----------------------------------------------------
#
#
# Exemplo:
#
# $ ./1-script-while.sh

opcao=1

while [[ opcao -ne 0 ]]
do
	clear
	echo -e "1- Lista de Telefones\n2- Lista de Email\n0- Sair"
	read -p "Selecione sua opcao: " opcao
done
