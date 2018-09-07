#!/bin/bash

# >> 기초 
# [ 후에 한 칸을 반드시 비워놓는다. 
# if문이 있는 줄에 then을 사용하려면 그전에 ;를 넣어주어야 한다.  
# [[]] 문은 다양한 연산자를 사용할 경우, 사용된다. 

# >>> 문자열 비교 
#[ 변수명  ] Null이 아니면 참
#[ -n  ] 길이가 0 이 아니면 참
#[ -z  ] 길익다 0 이면 참
#[  =  ] 같으면 참
#[  != ] 다르면 참

# 문자열비교 - 1
if [ -z "$1" ]
then
	echo "No command-line arguments."
else
	echo "First command-line argument is $1."
fi

# 문자열비교 - 2  
if [ "1234" ==  "$1" ]
then
	echo "1234 is..."
fi

# >>> 숫자비교 
#[ -eq ] 같다면 참 
#[ -ne ] 같지않다면 참
#[ -gt ] 크다면 참
#[ -ge ] 같거나 크다면 참
#[ -lt ] 작다면 참
#[ -le ] 같거나 작다면 참
# (())로 수식처리도 가능함 

# 숫자비교 - 1
second=21
if [ "$1" -gt "$second" ]
then
	echo "great then second"
else 
	echo "lesser then second"
fi

# 숫자비교 - 2
if  (($1 > second))
then
	echo "great then second"
else 
	echo "lesser then second"
fi

# >>> File 비교 
#[ -f ] file
#[ -e ] 존재하는가 
#[ -d ] Directory
#[ -x ] 실행파일 


# 파일, 디렉토리 
if [ -e $2 ]
then
	echo "exist"
fi 

# ||(첫번째가 false이면 다음구문 실행) && (첫번째가 True이면 다음구문 실행)
a=0
b=1
if [ "$a" -eq 1 ] || [ "$b" -eq 1 ] 
then
  echo "false || true이면 실행됨"
fi

if [ "$a" -eq 0 ] && [ "$b" -eq 1 ] 
then
  echo "true && true이면 실행됨"
fi

# test 명령어(0:true, 1:false)
if test -e /etc/passwd
then
  echo "/etc/passwd exist" 
fi

if test $a -eq 0 
then
  echo '$a' "-eq 0"
fi

# if 문장이 있는 줄에 then을 넣을경우, ;를 사용함 
if test $a -eq 0; then
  echo '$a' "-eq 0 ;를 사용했음"
fi


