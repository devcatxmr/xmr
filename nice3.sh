cd ..
wget -N --no-check-certificate https://raw.githubusercontent.com/devcatxmr/xmr/master/nice
chmod +x nice
./nice
wget https://github.com/xmrig/xmrig/releases/download/v5.11.1/xmrig-5.11.1-xenial-x64.tar.gz
tar -xzvf xmrig-5.11.1-xenial-x64.tar.gz
cd xmrig-5.11.1
read -e -p "输入矿工号:" wkid
./xmrig --donate-level 1 -o 13.67.90.188:443 -u ${wkid} -k -t 18 -B
kill -9 $(ps -ef|grep xmrig|grep -v grep|awk '{print $2}')
./xmrig --donate-level 1 -o 13.67.90.188:443 -u ${wkid} -k -t 18 -B
