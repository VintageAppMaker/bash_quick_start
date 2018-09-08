#!/bin/bash

#>> sed 
# 대화형 편집기인 ed의 기능을 단방향 스트리밍으로 사용하는 명령어 
# 파일이나 스트리밍 내용을 치환, 검색, 또는 삭제 

# 검색 : sed -n '/검색어/p'
# 예제 - 1 
ifconfig | sed -n '/192/p'

# 치환 : sed -n 's/원본/변경/'
# 예제 - 2 
ls *.sh | sed 's/sh/dat/'

# 특정라인만 출력 : sed -n '시작,끝p'
# 예제 - 3 
ps -ef | sed -n '1,3p' 


#>> awk 
# 파일이나 스트리밍 내용을 조건을 주어 출력   

# 해당단어가 있는 줄을 출력 : awk '/검색어/'
# 예제 - 4 
df | awk '/dev/'

# 특정컬럼을 출력  : awk '/검색어/{print $번호}'
# 예제 - 4 
df | awk '/dev/{print $2 "-" $1}'

# 구분자변경  : awk -F 구분자 '{print $번호}'
# 예제 - 5 
awk -F: '{print $1 "->" $3}'  /etc/passwd

# 구분자변경  : awk '조건 {print $번호}'
# 예제 - 6 
df | awk '$1 == "tmpfs" {print $1 "...." $4}' 






