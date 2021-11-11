#!/bin/bash

coproc bc
echo '77+80' >&${COPROC[1]}
read -u ${COPROC[0]} RESULTADO
echo "Resultado: " $RESULTADO


echo $SHLVL
