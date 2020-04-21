#!/bin/bash

SERVER="bw.gcloud.eliseomartelli.it"
SUPPORT_USER="support"
printf "\nStarting support connection to %s\n\n" $SERVER
screen -S "support" -d -m bash -c "ssh -N -R 2222:localhost:22 $SUPPORT_USER@$SERVER"
read  -n 1 -pr "Press any button to end"
screen -XS "support" quit
printf "\nBye!\n\n"
