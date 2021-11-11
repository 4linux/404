#!/bin/bash

coproc bc 

for x in {1..100}
do
    for x2 in {1..100}
    do
        echo ${x}^${x2} >& ${COPROC[1]}
        read RESULTADO <& ${COPROC[0]}
        echo ${RESULTADO}
    done
done

kill $COPROC_PID
