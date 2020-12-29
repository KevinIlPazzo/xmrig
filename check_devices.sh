nmap -sP 192.168.0.1/24  > /dev/null 2>&1
arp -na | grep -e "b4:2e:99"
