#!/bin/bash


echo "Borro default gateways asignados por Docker"


docker exec -it bgp_h12_1 ip -6 route del default

docker exec -it bgp_h14_1 ip -6 route del default

docker exec -it bgp_r4_1 ip -6 route del default


docker exec -it bgp_r6_1 ip -6 route del default

docker exec -it bgp_r8_1 ip -6 route del default

docker exec -it bgp_b2_1 ip -6 route del default


echo "Asigno nuevo default gw"


docker exec -it bgp_h12_1 ip -6 route add default via 2001:b612::6
docker exec -it bgp_h14_1 ip -6 route add default via 2001:b814::8

echo "Asigno default gateways routers internos SA"

docker exec -it bgp_r4_1 ip -6 route add default via 2001:bb24::2
docker exec -it bgp_r6_1 ip -6 route add default via 2001:bb26::2
docker exec -it bgp_r8_1 ip -6 route add default via 2001:bb28::2
