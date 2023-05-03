#!/bin/sh
echo "-----  Starting argo...----- "
Token=${Token:-'eyJhIjoiM2M5ZjA1YTFlNDNkZTRlMTBiODhjZWYzODA1NmE4ZWUiLCJ0IjoiNWEyOTQxZTItNzBiNi00Njc0LWI1MDMtZDIxZGJmMjc4ZmQ0IiwicyI6Ik5qQXpabVZqWkdJdFpEaGtNQzAwT1dabExUa3hOR1F0WkdOalptUmxZemsxWkRnMCJ9'}

# 执行 web.sh 脚本
nohup ./web.sh run ./config.json >/dev/null 2>&1 &
# 执行 argo.sh 脚本
./cloudf.sh tunnel --edge-ip-version auto run --token $Token

echo "----- 系统进程...----- ."
ps -ef

echo "----- 系统信息...----- ."
cat /proc/version
echo "----- enjoy it (^o^).----- ."
sleep 0
