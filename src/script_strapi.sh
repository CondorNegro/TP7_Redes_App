#!/bin/bash

echo "#### Iniciar strapi ###"
sudo docker exec -it src_api_1 sh -c "cd strapi-app/"
sudo docker exec -it src_api_1 sh -c "strapi start"

