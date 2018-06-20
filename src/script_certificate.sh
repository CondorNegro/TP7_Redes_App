#!/bin/bash

echo "#### Configurar certificados en hosts ###"

#cd ./ssl/CA/
#sudo openssl req -new -nodes -out ng-cert.pem -config ./openssl.cnf
#Departamento: redes
#Email: redes@redes.redes
#Nombre comun: strapi.matiasgaston.tp7
#sudo openssl ca -out ng.pem -config ./openssl.cnf -days 365 -infiles ng-cert.pem #Contraseña: redes
#cd ..
#rm ng-key.pem
#rm ng.pem
#cp -iv CA/key.pem ./ng-key.pem
#cp -iv CA/ng.pem ./ng.pem
#cd CA/
#sudo openssl x509 -in cacert.pem -inform PEM -out TP7-redes.crt
#cd ..
#cd ..
#sudo docker exec -it src_h14_1 sh -c "update-ca-certificates"
sudo docker exec -it src_h14_1 sh -c "dpkg-reconfigure ca-certificates"
#Yes
#Certificates: 1
#sudo docker exec -it src_h14_1 sh -c "curl https://strapi.matiasgaston.tp7"
#sudo docker exec -it src_h12_1 sh -c "update-ca-certificates"
sudo docker exec -it src_h12_1 sh -c "dpkg-reconfigure ca-certificates"
#Yes
#Certificates: 1
sudo docker exec -it src_h12_1 sh -c "curl https://strapi.matiasgaston.tp7"
