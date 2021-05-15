##Script Suspicious_Roulette_Dealer.sh created to winnow out dealers working on days and times in question

#! /bin/bash

##initial script to understand pipe flow
##cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' >  Suspicious_Roulette_Dealer1.txt | grep "$1" Suspicious_Roulette_Dealer1.txt > Suspicious_Roulette_Dealer_Combined.txt


##final script
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$1" > Suspicious_Roulette_Dealer_Combined.txt
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$2" >> Suspicious_Roulette_Dealer_Combined.txt
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$3" >> Suspicious_Roulette_Dealer_Combined.txt
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$4" >> Suspicious_Roulette_Dealer_Combined.txt
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$5" >> Suspicious_Roulette_Dealer_Combined.txt
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$6" >> Suspicious_Roulette_Dealer_Combined.txt
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$7" >> Suspicious_Roulette_Dealer_Combined.txt
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$8" >> Suspicious_Roulette_Dealer_Combined.txt
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$9" >> Suspicious_Roulette_Dealer_Combined.txt
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$10" >> Suspicious_Roulette_Dealer_Combined.txt
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$11" >> Suspicious_Roulette_Dealer_Combined.txt
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$12" >> Suspicious_Roulette_Dealer_Combined.txt
cat Dealer_Schedule_Combined.txt | awk -F" " '{print ($1, $2, $5, $6)}' | grep "$13" >> Suspicious_Roulette_Dealer_Combined.txt
