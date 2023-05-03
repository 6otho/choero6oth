#!/bin/sh
echo "-----  Starting argo...----- "
Token=${Token:-'eyJhIjoiM2M5ZjA1YTFlNDNkZTRlMTBiODhjZWYzODA1NmE4ZWUiLCJ0IjoiOTY4N2MxNzctYjc4My00Njc5LThkOTMtZmM4ZGUwZGMxMjIyIiwicyI6IllUTmtNV0l3TVdFdE1XWTNaUzAwTWpneExUazBNR0l0T1dNMk5UUmxaRFkyWVRjeSJ9'}

chmod +x ./cloudf.sh
./cloudf.sh tunnel --edge-ip-version auto run --token $Token  >/dev/null 2>&1 &

echo "-----  Starting web ...----- ."

chmod +x ./web.sh
./web.sh -c ./config.json >/dev/null 2>&1 &

echo "----- 系统进程...----- ."
ps -ef

echo "----- 系统信息...----- ."
cat /proc/version
echo "----- enjoy it (^o^).----- ."
sleep 0
