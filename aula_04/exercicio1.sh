

DATA=$(date "+%d-%m-%Y %H:%M:%S")
ARQUIVO=$1
NOME_SCRIPT=$(basename "$0" .sh)
LOG="/var/log/$NOME_SCRIPT.log"
LOG_ERROR="/var/log/$NOME_SCRIPT.error"

echo "Análise do arquivo: $ARQUIVO"
echo "============================="


if [ -f $ARQUIVO ]
then
 ANALISE=$(echo "Linhas $(wc -l < $ARQUIVO)    \
	 	 Palavras: $(wc -w < $ARQUIVO) \
		 Caracteres: $(wc -m < $ARQUIVO)")
 echo $ANALISE
 exec 3>>$LOG
 >&3 echo -e "$DATA\t-\tVerificacao do Arquivo: $ARQUIVO foi concluida com sucesso"
 echo "================================="
else
   echo "O arquivo $ARQUIVO não existe"
   exec 2>>$LOG_ERROR
   >&2 echo -e "$DATA\t-\tVerificacao do arquivo $ARQUIVO nao obteve sucesso"
fi
 


 


