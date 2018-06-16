#!/bin/bash

echo "#### Configurar nameserver DNS ###"

sudo docker exec -it src_h12_1 apt -y install dnsutils
sudo docker exec -it src_h12_1 apt -y install nano
sudo docker exec -it src_h12_1 sh -c "echo nameserver 2001:bbbb:bbbb:8::4 > /etc/resolv.conf"
sudo docker exec -it src_h14_1 apt -y install dnsutils
sudo docker exec -it src_h14_1 apt -y install nano
sudo docker exec -it src_h14_1 sh -c "echo nameserver 2001:bbbb:bbbb:8::4 > /etc/resolv.conf"


echo "### Configurar BIND ###" 
sudo docker exec -it src_bind2_1 route del default
sudo docker exec -it src_bind2_1 route -A inet6 add default gw 2001:bbbb:bbbb:8::3


echo "### Configurar router de borde ###"
sudo docker exec -it src_b2_1 ip -6 route add 2001:c:c:c::/64 via 2001:c:c:c::a
sudo docker exec -it src_b2_1 ip -6 route del 2001:c:c:c::/64 dev eth0
sudo docker exec -it src_b2_1 ip -6 route del default


