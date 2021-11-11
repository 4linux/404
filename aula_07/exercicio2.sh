#!/bin/bash

# $ ./exercicio2.sh - Conta as linhas palavras e caracteres de um arquivo
#
# Site: 4linux.com.br
# Autor: Gabriel Melo
# Manutenção: Gabriel Melo
# ----------------------------------------------------
# Este programa recebe como parâmetro um arquivo e
# conta as palavras caracteres e linhas do mesmo.
#
# Exemplo:
#
# $ ./exercicio2.sh

ARQUIVO=$1
NOME_SCRIPT=$(basename "$0" .sh)
DATA=$(date "+%d-%m-%Y %H-%M-%S")
LOG="/var/log/$NOME_SCRIPT.log"
LOG_ERROR="/var/log/$NOME_SCRIPT.error"


mudaCor(){

   tput setaf 3
   echo -e "$*"
   tput sgr0

}


separador(){
   for X in $(seq $(tput cols))
   do
      echo -n "="
   done
}


fim(){
   tput setaf 3
   echo "Finalizando o programa"
   tput sgr0
   separador # function
   
   exec >>$LOG
   &>>$LOG echo -e "$DATA\t-\tVerificacao do Arquivo $ARQUIVO foi concluida com sucesso Pelo usuario $(who)"
   exit 0
}

fimErro(){
   tput setaf 1
   echo "Finalizando o programa"
   tput sgr0
   separador # function
   
   exec 2>>$LOG_ERROR
   &>>$LOG_ERROR echo -e "$DATA\-t-\-tVerificacao do Arquivo $ARQUIVO nao obteve sucesso"
   exit 1
}


lerAtributos(){
   while :
   do
      separador
      echo "Escolha uma das opcoes abaixo:
            1 - Quantidade de Linhas
            2 - Quantidade de Palavras
            3 - Quantidade de Caracteres
            4 - Exibir o conteudo do arquivo
            5 - Exibir o Proprietario do arquivo
            6 - Exibir o Grupo do Arquivo
            7 - Exibir a Permisao do Arquivo
            8 - Sair"
            tput setaf 1
            echo -e "\nOpcao:"            
            tput setaf 6
            read OPCAO
            tput sgr0
            clear



            case $OPCAO in

               1) # Quantidade de Linhas
                  tput setaf 3
                  echo "Arquivo: $ARQUIVO"
                  echo "Quantidade de linhas: $(wc -l $ARQUIVO | cut -d ' ' -f 1)"
                  tput sgr0
               ;;
               
               2) # Quantidade de Palavras
                  tput setaf 3
                  echo "Arquivo: $ARQUIVO"
                  echo "Quantidade de linhas: $(wc -w $ARQUIVO | cut -d ' ' -f 1)"
                  tput sgr0
               ;;
   
               3) # Quantidade de Caracteres

                  tput setaf 3
                  echo "Arquivo: $ARQUIVO"
                  echo "Quantidade de linhas: $(wc -m $ARQUIVO | cut -d ' ' -f 1)"
                  tput sgr0
               ;;
   
               4) # Exibir o conteudo do arquivo
                  
                  tput setaf 3
                  cat "$ARQUIVO"
                  echo "Arquivo: $ARQUIVO"
                  tput sgr0
               ;;
            
               5) # Exibir o Proprietario do Arquivo

                  mudaCor "Arquivo: $ARQUIVO"  "\nProprietario do Arquivo: $(stat -c "%U" $ARQUIVO)"
               ;;
               
               6) # Exibir o Grupo do Arquivo
                  mudaCor "Arquivo: $ARQUIVO" "\nGrupo do Arquivo: $(stat -c "%G" $ARQUIVO)"
               ;;

               7) # Exibir a Permissao do Arquivo
                  mudaCor "Arquivo: $ARQUIVO" "\nPermissao do Arquivo: $(stat -c "%A" $ARQUIVO)"
               
               ;;
               8) # Exit
                    fim # Function
            esac 
   done

}

lerAtributos

