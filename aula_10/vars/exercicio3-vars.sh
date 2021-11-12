#!/bin/bash

function buscaCep(){

	local json_file="cep.json"
	CEP=$(yad --form 						\
		  --title="Digite seu cep:"				\
		  --field="CEP:"					)

	curl -s "https://viacep.com.br/ws/${CEP%|}/json" > $json_file
	RUA=$(jq '.logradouro' "$json_file")
	UF=$(jq '.uf' "$json_file")
}

function menu(){
	yad --form 				\
	    --width="500"			\
	    --height="500"			\
	    --title="Auto preenchimento"        \
	    --field="CEP:":RO "${CEP%|}"	\
	    --field="Rua:":RO "$RUA"		\
	    --field="UF:":RO "$UF"		\
	    --center

}
