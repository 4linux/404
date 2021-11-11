#!/bin/bash

EMAIL="helo4linux.com.br"

if [[ "$EMAIL" =~ [a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$ ]]
then
   echo "Email inserido $EMAIL é válido"
else
   echo "Email inserido $EMAIL é inválido"
fi

