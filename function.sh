#!/bin/bash

#>> 함수  
# call by value만 가능함. eval문을 사용하면 call by ref도 가능함.   
# parameter는 $1, $2식으로 입력받음.  
# return 문은 0-255 숫자값만 가능하다  
# 문자열 리턴은 echo로 가능 
# 숫자리턴은 $?로 가능 


# 예제 - 1 : 숫자값 리턴 
test1(){
    return 3
}

test1
((rst=10+$?)) 
echo $rst 

# 예제 - 2 : 문자값 리턴 
test2(){
    echo "Hello"	
}

rst=$(test2)
echo $rst 


# 예제 - 3 : 파라메터  
test3(){
    ((rst=$1 + $2))
    return $rst
}

test3 11 22 
echo $?
