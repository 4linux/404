#!/bin/bash

# $ ./exercicio1.sh - Conta as linhas palavras e caracteres de um arquivo
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
# $ ./exercicio1.sh <Arquivo>

ARQUIVO=$1

function printEqual(){
   for X in $(seq $(tput cols))
   do
      echo -n "="
   done
}

lerArquivo(){
   tput setab 7
   tput setaf 0 
   cat $ARQUIVO
   tput sgr0
   printEqual
}

confirmaLeitura(){
   tput setaf 2
   read -p "Gostaria de ler o conteudo do arquivo? (S/N)" CONFIRMACAO
   
   if [[ "$CONFIRMACAO" == 'S' || "$CONFIRMACAO" == 's' ]]
   then
      lerArquivo
   elif [[ "$CONFIRMACAO" == 'N' || "$CONFIRMACAO" == 'n' ]]
   then
      tput setaf 1
      echo "Encerrando execucao do script."
   else
      tput setaf 1
      echo "Opcao nao encontrada. Tente novamente"
      confirmaLeitura
   fi
}


analisarArquivo(){
   if [[ -f $ARQUIVO ]]
   then
      ANALISE=$(echo -e "Linhas: $(tput setaf 1; wc -l <$ARQUIVO; tput setaf 7; tput sgr 0)Palavras: $(tput setaf 1; wc -w <$ARQUIVO; tput setaf 7; tput sgr 0)Caracteres: $(tput setaf 1; wc -m <$ARQUIVO; tput setaf 7; tput sgr 0)")
                     
      echo "$ANALISE"
      confirmaLeitura
   else
      echo "Arquivo $ARQUIVO nao existe!"
   fi
}

analisarArquivo




