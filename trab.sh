#!/bin/bash
echo "Começar trabalho"
echo "Parando o mysql"
sudo service mysql stop
echo "Parando o mongo"
sudo service mongod stop
echo "Sucesso!"
echo "Abrindo firefox"
firefox
echo "Abrindo vs code"
export COLETORES=/home/gostosodemais/dadosjusbr/coletores
cd ${COLETORES}
code .
