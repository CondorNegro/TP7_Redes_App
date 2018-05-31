#!/bin/bash


echo "Borro default gateways asignados por Docker"


docker exec -it srcsa2_h12_1 ip -6 route del default

docker exec -it srcsa2_h14_1 ip -6 route del default

docker exec -it srcsa2_r4_1 ip -6 route del default


docker exec -it srcsa2_r6_1 ip -6 route del default

docker exec -it srcsa2_r8_1 ip -6 route del default

docker exec -it srcsa2_b2_1 ip -6 route del default


echo "Asigno nuevo default gw"


docker exec -it srcsa2_h12_1 ip -6 route add default via 2001:bbbb:bbbb:612::6
docker exec -it srcsa2_h14_1 ip -6 route add default via 2001:bbbb:bbbb:814::8

echo "Asigno default gateways routers internos SA"

docker exec -it srcsa2_r4_1 ip -6 route add default via 2001:bbbb:bbbb:24::2
docker exec -it srcsa2_r6_1 ip -6 route add default via 2001:bbbb:bbbb:26::2
docker exec -it srcsa2_r8_1 ip -6 route add default via 2001:bbbb:bbbb:28::2
