#! /bin/bash

##script to complile roulette losses over multiple days

grep -FH - $1 > Roulette_Losses.txt
grep -FH - $2 >> Roulette_Losses.txt
grep -FH - $3 >> Roulette_Losses.txt
