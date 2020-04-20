#!/bin/bash

SERVER="support.eliseomartelli.it"
SUPPORT_USER="support"
printf "\nStarting support connection to $SERVER\n\n"
screen -S "support" -d -m bash -c "ssh -N -R 2222:localhost:22 $SUPPORT_USER@$SERVER -o \"CheckHostIP=no\""
read  -n 1 -p "Press any button to end"
screen -XS "support" quit
printf "\nBye!\n\n"
