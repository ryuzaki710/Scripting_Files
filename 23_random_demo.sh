#/bin/bash
echo "Script Name= $0 "
#generating random number between 1 to 6 for pair of dice

dice_num=$(( $RANDOM %6+1 ))
echo "Dice number is = $dice_num"

<<comment
OUTPUT:
Script Name= 23_random_demo.sh
Dice number is = 4

Script Name= 23_random_demo.sh
Dice number is = 2

Script Name= 23_random_demo.sh
Dice number is = 6

comment
