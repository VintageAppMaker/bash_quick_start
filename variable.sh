#!/bin/bash

#>> 변수
# 변수명을 사용(가져오기)할 경우는 $를 먼저입력. 선언, 대입할 때는 이름만 사용가능  
# 변수형을 Fix하고자 한다면 : declare or typeset -옵션(r, a, f, i)

#>> 숫자연산 
# 숫자연산 let을 사용하는 방법. let 이후 변수명=변수명의 붙여쓰기 중요함.  
# (())을 사용하는 방법 

#>> 배열처리  
# ()안에 원소를 정의 
# ${변수명[@]}은 배열전체를 뜻함 
# ${변수명[인덱스]}는 배열내의 인덱스값을 가져오기 


# 예제 - 1: 변수 
declare -i age=3
echo $age
age="AAAA"
echo $age

declare -r ronly=3
ronly="AAAA"

# 예제 - 2 : 숫자연산 
a=1
b=2
let rst=$a+$b+3 #붙여쓰기 조심 
echo $rst

((rst=30*$a+$b))
echo $rst

# 예제 - 3
list=( apple pineapple banana )
cnt=0
for i in ${list[@]}
do
    echo -n $i :
    echo " ${list[cnt]} "
    ((cnt++))
done


