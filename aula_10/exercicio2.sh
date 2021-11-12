#!/bin/bash

source ./vars/exercicio2-vars.sh

# Function
calendario

if [[ $? -eq 0 ]]
then
	clear
	echo "A data escolhida e: $DATA"
else
	echo "Voce saiu do programa"
fi
