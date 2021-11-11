#!/bin/bash

function menu(){
 resposta=$(zenity --list 		      		\
	 	   --title "Menu da aula"		\
		   --column "op��o"			\
		   --column "Descri��o"			\
		   --cancel-label="Sair" 	 	\
		   1 "Listar usu�rio do sistema" 	\
		   2 "Visualizar um arquivo de log"	\
		   3 "Visualizar a p�gina 4linux"	\
		   4 "Sair")

}


notificacao_sair(){
	zenity --notification --text="Voc� esta saindo do programa..."

}


listar_usuarios(){
	local arquivo='/etc/passwd'
	local arquivo_formatado='usuarios.txt'
	cut -d':' -f 1 $arquivo > "$arquivo_formatado"

	zenity --text-info --title="Listando usu�rios" --filename="$arquivo_formatado"
}

visualizar_log(){
	local arquivo=$(zenity --file-selection)

	zenity --text-info --title "visualizando log" --filename="$arquivo" --width=500 --height=400
}


visualizar_pagina(){

	local url="https://4linux.com.br/"
	zenity --text-info --url="$url" --html --wdith=1000 --height=700 --title="visualizando p�gina"
}
