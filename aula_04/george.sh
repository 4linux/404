#!/bin/bash

3>>$0.log

arq="$1"

if [ "x${arq}" == "x" ] ; then
  echo "Arquivo nao informado"
  exit
fi
if [[ ! -f $arq ]] ; then
  echo "Arquivo nao existe"
  exit
fi

arq_linha=`cat "${arq}" | wc -l`
arq_palav=`cat "${arq}" | wc -w`
arq_carac=`cat "${arq}" | wc -m`

>&3 echo "O arquivo ${arq} contem ${arq_linha} linhas, ${arq_palav} palavras e ${arq_carac} caracteres."
