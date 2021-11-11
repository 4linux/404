#!/bin/bash

read -p "Digite seu telefone: " TELEFONE

if [[ "$TELEFONE" =~ ^\(?[1-9]{2}\)?(?:[2-8]|9[1-9])[0-9]{3}-[0-9]{4}$ ]]
then
   echo "Telefone válido"
else
   echo "Telefone inválido"
fi
