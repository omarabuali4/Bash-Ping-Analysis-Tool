#! /bin/bash

PS3='Please enter your choice: '
options=( "defulte ping and create the file" 
 "Number of sent packets."
 "Number of sent bytes"
 "Average amount of time to live TTL" 
 "Minimum/average/maximum times of the sent packets."
 "Amount of lost packets"
 "Quit")
select opt in "${options[@]}"
do
    case $opt in
# --------------------------1--------------------------------------
        "defulte ping and create the file")
echo -e "\e[1;36m The text will be on the screen after 5 second \e[0m"
read -p "Press enter to continue"
echo "

"
echo "
pinging....
"
sleep 1
ping googl.com -c 4 >&ping.txt 
sleep 2
cat  ping.txt 
echo -e "
\e[1;31m !--------Done------! \e[0m
"
;;
# --------------------------2--------------------------------------
        "Number of sent packets.")
echo "
"
  sed -n 8p ping.txt | awk '{print $1,$2,$3,$4,$5}'
echo "
"
;;
# -----------------------------3-----------------------------------
        "Number of sent bytes")
echo "
"
sed -n 2p ping.txt | awk '{print $1,$2,$3,$4}'
echo "
"
;;
# ------------------------------4----------------------------------
        "Average amount of time to live TTL")
echo "
"
 grep ttl ping.txt | awk '{print $6,$7}'
echo "
"
;;
# ---------------------------5-------------------------------------
        "Minimum/average/maximum times of the sent packets.")
echo "
"
awk '/max/' ping.txt
echo "
"            
;;
# -------------------------------6---------------------------------
        "Amount of lost packets")
echo "
"
sed -n 8p ping.txt | awk {'print $6,$7,$8'}
echo "
"            
;;
# ---------------------------7-------------------------------------
        "Quit")
echo -n "delete the ping file?(yes/No) "
read answer
if [ "$answer" != "${answer#[Yy]}" ] ;then
rm ping.txt
    echo -e "
\e[1;31m !--------Done------! \e[0m
"
sleep 1
clear
else
exit
fi
exit
;;
        *) echo "invalid option $REPLY";;
    esac
done



