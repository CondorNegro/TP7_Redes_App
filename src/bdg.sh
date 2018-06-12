#!/bin/bash

echo "#### BORRAR IPv4 default gateway ###"
sudo docker exec -it src_h11_1 ip route del default
sudo docker exec -it src_h13_1 ip route del default
sudo docker exec -it src_r3_1 ip route del default
sudo docker exec -it src_r5_1 ip route del default
sudo docker exec -it src_r7_1 ip route del default
#sudo docker exec -it src_b1_1 ip route del default

echo "### BORRAR IPv6 DEFAULT GATEWAY###" 
sudo docker exec -it src_r3_1 ip -6 route del default
sudo docker exec -it src_r5_1 ip -6 route del default
sudo docker exec -it src_r7_1 ip -6 route del default
#sudo docker exec -it src_b1_1 ip -6 route del default

sudo docker exec -it src_h11_1 ip -6 route del default
sudo docker exec -it src_h13_1 ip -6 route del default
sudo docker exec -it src_h11_1 ip -6 route add default via 2001:aaaa:aaaa:6::5
sudo docker exec -it src_h13_1 ip -6 route add default via 2001:aaaa:aaaa:7::7

echo "### AGREGANDO GATEWAY ESTATICO ###"
sudo docker exec -it src_r3_1 ip -6 route add default via 2001:aaaa:aaaa:1::111
sudo docker exec -it src_r5_1 ip -6 route add default via 2001:aaaa:aaaa:2::111
sudo docker exec -it src_r7_1 ip -6 route add default via 2001:aaaa:aaaa:3::111
