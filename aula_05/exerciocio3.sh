#!/bin/bash


# $ ./3-script-while.sh - Cria um separador com o sinal =
#
# Site: 4linux.com.br
# Autor: Gabriel Melo
# Manutenção: Gabriel Melo
# ----------------------------------------------------
#
#
# Exemplo:
#
# $ ./3-script-while.sh


WIDTH=$(tput cols)
CONTADOR=0

while [ $CONTADOR -lt $WIDTH ]
do
  tput setaf 2
  printf "="
  CONTADOR=$(($CONTADOR + 1))
done

for LINHA in $(seq 1 $WIDTH)
do
  printf "="
done
