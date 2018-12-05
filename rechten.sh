#!/bin/bash
#Script met standaard gebruikers en groepen behorende bij de opdrachten
#van de les rechten.
useradd andre -m
echo andre:"andre123" | chpasswd
useradd lindsy -m
echo lindsy:"lindsy123" | chpasswd
useradd kurt -m
echo kurt:"kurt123" | chpasswd
useradd jen -m
echo jen:"jen123" | chpasswd
echo "Users created"
groupadd servicedesk
groupadd systeembeheer
usermod andre -aG servicedesk
usermod lindsy -aG servicedesk
usermod kurt -aG systeembeheer
usermod jen -aG systeembeheer
usermod andre -aG systeembeheer
cat > ~/scriptresults.txt <<- "EOF"
De volgende gebruikers en groepen zijn aangemaakt:
gebruiker	lid van groep(en)
andre		servicedesk, systeembeheer
lindsy		servicedesk
kurt		systeembeheer
jen		systeembeheer
met deze gebruikers en groepen kan je verder met de rest van de opdrachten.
EOF
cat ~/scriptresults.txt
