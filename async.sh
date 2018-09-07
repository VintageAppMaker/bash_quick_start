#>> Async 
# 명령뒤에 &를 붙인다.  

#>> named pipe 만들기 
# mkfifo 명령어를 사용하고 그 파일을 읽고쓴다. 


# 예제 - 1:  
pfile=redirect.fifo

if [[ ! -p $pfile ]] ; then
    mkfifo $pfile
fi

# async logcat run
adb logcat > $pfile&

# read fifo
while read line
do
    echo "$line" | awk '/run/{print $0}'
done <$pfile 


