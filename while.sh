#!/bin/bash

#>> while 구문 - (()) 
# while ((산술조건 )) 
# do
# ...
# done

# while 예제 - 1
max=10
i=0
while (( i < max  )) 
do
    echo $i
	(( i++ ))
done

#>> while 구문 - [] 
# while [ 조건 ] 
# do
# ...
# done

# while 예제 - 2
max=10
i=0
while [ "$i" -lt "$max" ]
do
    echo $i
	(( i++ ))
done

#>> while 구문 - 명령어 (read와 < 의 조합)
# while 명령어 
# do
# ...
# done

# while 예제 - 3
echo "input text:"
while read ans
do
    echo "you wrote: " $ans
	if [ "$ans" == "quit" ]
	then
	    break	
	fi
    echo "input text:"
done

# while 예제 - 4
while read i 
do
    echo  $i
done < /etc/passwd 


