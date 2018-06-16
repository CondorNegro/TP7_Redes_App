#!/bin/bash

echo "#### BORRAR IPv4 default gateway ###"
sudo docker exec -it src_h12_1 ip route del default
sudo docker exec -it src_h14_1 ip route del default
sudo docker exec -it src_r4_1 ip route del default
sudo docker exec -it src_r6_1 ip route del default
sudo docker exec -it src_r8_1 ip route del default
#sudo docker exec -it src_b1_1 ip route del default

echo "### BORRAR IPv6 DEFAULT GATEWAY###" 
sudo docker exec -it src_r4_1 ip -6 route del default
sudo docker exec -it src_r6_1 ip -6 route del default
sudo docker exec -it src_r8_1 ip -6 route del default
#sudo docker exec -it src_b1_1 ip -6 route del default

sudo docker exec -it src_h12_1 ip -6 route del default
sudo docker exec -it src_h14_1 ip -6 route del default
sudo docker exec -it src_h12_1 ip -6 route add default via 2001:bbbb:bbbb:6::5
sudo docker exec -it src_h14_1 ip -6 route add default via 2001:bbbb:bbbb:7::7

echo "### AGREGANDO GATEWAY ESTATICO ###"
sudo docker exec -it src_r4_1 ip -6 route add default via 2001:bbbb:bbbb:1::111
sudo docker exec -it src_r6_1 ip -6 route add default via 2001:bbbb:bbbb:2::111
sudo docker exec -it src_r8_1 ip -6 route add default via 2001:bbbb:bbbb:3::111
