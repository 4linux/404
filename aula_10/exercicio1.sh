#!/bin/bash
source ./vars/exercicio-vars.sh

#Chamada do menu
menu #function


#Validando os botões
if [[ "$?" -ne 0 ]]
then
  notificacao_sair
else
  case $resposta in
	1) listar_usuarios   ;;
	2) visualizar_log    ;;
	3) visualizar_pagina ;;
	4) notificao_sair    ;;
  esac
fi
