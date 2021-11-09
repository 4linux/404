#!/bin/bash


if (( 5*3 == 15 && 3*3 == 9 ))
then
  echo "As duas condições são válidas"
else
  echo "Ao menos uma das duas são inválidas"
fi


if [[ -f arquivo.txt || -f operators.sh ]]
then
	ls
   echo "Um dos dois existe"
else
   echo "Nenhum deles existe"
fi
