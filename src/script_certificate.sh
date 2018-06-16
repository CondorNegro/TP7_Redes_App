#!/bin/bash

echo "#### Configurar nameserver DNS ###"

cd ./ssl/CA/
sudo openssl req -new -nodes -out ng-cert.pem -config ./openssl.cnf