#!/bin/zsh
site="https://www.google.com/search?q="


i=0
if [[ $# -eq 0 ]]
then
    echo "Input something"
    exit
fi


while  [ $i -lt $# ]
do
    i=$(( $i + 1 ))
    cem="\$$i+"
    site=($site$cem)
    
done 
salam=$site

search () {
   echo "Redirecting to $salam"
    
   xdg-open $salam
} 
search

exit 