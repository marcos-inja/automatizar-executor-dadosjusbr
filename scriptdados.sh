#!/bin/bash

#Primeiro vamos entrar na pasta onde vai ser rodado
echo "Iniciando programa"
cd ${ALBA_PATH}/cli

#Vamos definir as variaveis basicas
export ORGAO=mppb
echo -e "\033[1;32mQuer rodar para qual ano? \033[0m"
read YEAR
export YEAR

#Vamos rodar o script
echo -e "\033[0;36mIniciando loop\033[0m"
for i in {1..12}
do
	export MONTH=${i}
	echo -e "\033[40;1;37mRodando para orgao: ${ORGAO}, year: ${YEAR}, Month: ${MONTH}\033[0m"
	cat ${ALBA_PIPELINES_PATH}/${ORGAO}.json | ./alba run-adhoc

	echo -e "\033[42;1;37mExecutado com sucesso!\033[0m"
	echo "Apagando pasta github..."
	sudo rm -r github.com
	echo -e "\033[41;1;37mPasta github apagada com sucesso!\033[0m"
done
