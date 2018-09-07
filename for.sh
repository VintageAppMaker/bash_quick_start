#!/bin/bash

#>> for 구문 - in
# for 변수 in 범위,명령의 결과, 열거된 명령, 배열 
# do
# ...
# done

# in 예제 - 1 : 디렉토리내의 파일리스트 
for i in *
do
    echo $i
done

# in 예제 - 2 : 명령의 결과  
for i in $(ls *.sh)
do
    echo $i
done

# in 예제 - 3 : 범위   
for i in {1..5} 
do
    echo $i
done

# in 예제 - 4 : 열거    
for i in apple snake animal "$(date)"
do
    echo $i
done

# in 예제 - 5 : 배열 ${변수명[@]}
lst=(first second third)
for i in ${lst[@]}
do
    echo $i
done

# for 문 ((;;)) - C Style
# 예제 - 1 
for (( i=0;i<10;i++ ))
do
    echo $i
done




