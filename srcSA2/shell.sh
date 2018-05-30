#!/bin/bash
echo "Borro lo creado"

#Ejecutar con sudo.

docker rm -f bgp_b2_1
docker rm -f bgp_r4_1

docker rm -f bgp_r6_1 bgp_r8_1

docker rm -f bgp_h12_1 bgp_h14_1 



docker network prune


echo "Creo containers."


docker-compose up




