contador=1

while [[ $contador -le 5 ]]
do
  echo $contador
  contador=$[$contador+1] #Expressao aritimética
done


x=0
while [[ $x -lt 5 ]]
do
 echo "Estamos no: $x"
 ((x++))

 if [[ $x -eq 4 ]]
 then
   break
 fi
done


for X in {1..50}
do
  if [[ $(($X % 2 )) -ne 0 ]]
  then
    continue
  fi

  echo "Numero: $X é par"
done
