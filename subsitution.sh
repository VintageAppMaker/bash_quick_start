#!/bin/bash

#>> 명령어 치환  
# 실행결과를 변수에 대입 
# ``를 사용하는 방법 
# $()를 사용하는 방법 

#예제 1
lst=`for i in 1 2 3 4 5
do
    echo -n "$i"
done`

echo $lst

#예제 2
rst=$(ps -ef  | grep init)
echo $rst
