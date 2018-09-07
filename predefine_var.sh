#!/bin/bash

echo '$0'은 $0
echo "파라메터개수" $#
echo '$@'는 $@
#바로전의 실행결과  
echo $?
#아래는 에러임. 그 결과를 알려줌  
no_file_no_excute_no_command
#바로전의 실행결과  
echo $?
