#!/usr/bin/env bash
#
# $ ./exercicio1.sh - Abre um menu que te possibilita criar um arquivo.cs ou listar o conteudo de um arquivo csv formatado
#
# Site: 4linux.com.br
# Autor: Gabriel Melo
# Manutenção: Gabriel Melo
# ----------------------------------------------------
#
# Exemplo:
#
# $ ./exercicio1.sh
trap menu 2 3

function menu(){

   echo "1 - Criar um arquivo.csv"
   echo "2 - Listar o conteudo de um arquivo .csv"
   echo "o - Sair"

   read -p "Escolha: " ESCOLHA
   
   case $ESCOLHA in
   1)
      clear
      read -p "Digite o nome do arquivo a ser criado: " NOME_ARQUIVO
      clear
      read -p "Digite o nome para o primeiro: " CAMPO_NOME
      clear
      read -p "Digite o telefefone para o segundo campo: " CAMPO_TELEFONE
      clear
      read -p "Digite o endereco para o terceiro campo: " CAMPO_ENDERECO
      echo -e "nome;telefone;endereco\n$CAMPO_NOME;$CAMPO_TELEFONE;$CAMPO_ENDERECO" >> "./$NOME_ARQUIVO.csv"

   ;;

   2)
      clear
      read -p "Digite o nome do arquivo a ser consultado: " NOME_ARQUIVO_CSV
      if [ -f $NOME_ARQUIVO_CSV ]
      then
        oldIFS=$IFS
        IFS=";"
        tput setaf 2
        echo $(cat "$NOME_ARQUIVO_CSV")
        tput sgr0
        unset IFS
     else
      tput setaf 1
      echo "Arquivo informado invalido"
      tput sgr0
     fi
   ;;

   0) 
      clear
      exit
   esac
}


clear
while :
do
  menu  

done


