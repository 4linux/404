#!/bin/bash

trap "echo 'Vish voce esta preso no script'" 2 3
read -p "Digite:" value
echo $value
