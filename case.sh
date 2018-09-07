#!/bin/bash

#>> case 구문 
# case "변수명" in 
# 조건) ;;
# ...
# esac 

# case 예제 - 1

echo "ps -ef start? (yes/no)"
read ins 

case "$ins" in
   yes | y | YES | Y) ps -ef ;;
   n* | N*) echo "Nothing";;
   *) echo "I don't know";;
esac


