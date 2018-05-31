#!/bin/bash
echo "Borro lo creado"

#Ejecutar con sudo.

docker rm -f srcsa2_b2_1
docker rm -f srcsa2_r4_1

docker rm -f srcsa2_r6_1 srcsa2_r8_1

docker rm -f srcsa2_h12_1 srcsa2_h14_1 srcsa2_bind_1



docker network prune


echo "Creo containers."


docker-compose up




