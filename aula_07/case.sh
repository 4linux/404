#!/usr/bin/env bash

NAME=$(whoami)

case $NAME in
   "root")
      shutdown -h now
   ;;
   
   "vagrant")
      date "+%d-%m-%Y"
   ;;   
esac
      






