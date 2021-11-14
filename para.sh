#!/bin/bash
echo "Parando o mysql"
sudo service mysql stop 
echo "Parando o mongo"
sudo service mongod stop
echo "Sucesso!"
