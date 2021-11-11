#!/bin/bash
# $ ./exercicio3.sh - Compacta um arquivo e envia ele para uma máquina Remota
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
# $ ./2-script-case.sh <Directory>


DIRECTORY=$1
DATA=$(date "+%d-%m-%Y %H:%M:%S")

function base_name(){


    basename $1 .sh
}





if [[ -f $DIRECTORY || -d $DIRECTORY ]]
then
    tar -cvzf "$(base_name $DIRECTORY).tar.gz" "$DIRECTORY"
    if [[ $? -eq 0  ]]
    then
        echo -e "Arquivo: $(base_name $DIRECTORY).tar.gz\tStatus: SUCESS\tHorario:$DATA" >>meulog.log
        scp "$(base_name $DIRECTORY).tar.gz" vagrant@172.27.11.11:/home/vagrant/
    fi
else
    echo -e "Arquivo: $(base_name $DIRECTORY).tar.gz\tStatus: FAIL\Horario: $DATA" >> meulog.error
fi





