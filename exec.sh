#!/bin/zsh

# Declaração das váriaveis:
# Caminho do executor cmd
EXECUTOR_CMD=/home/marcos/dadosjusbr/coletar/executor/cmd
MONTHS=('01' '02' '03' '04' '05' '06' '07' '08' '09' '10' '11' '12')

# Tempo para execução do coletor
DOWNLOAD_TIMEOUT=30s 
TIME_BETWEEN_STEPS=30s 
GENERAL_TIMEOUT=10m

# Ano e tribunal lido no inicio:
echo -e "\033[1;32mQuer rodar para qual ano?\033[0m"
read YEAR
echo -e "\033[1;32mPara qual tribunal?\033[0m"
read COURT

cd $EXECUTOR_CMD

for MONTH in $MONTHS
do
    echo -e "\n\033[40;1;37mRodando para o orgão: ${COURT}, ano: ${YEAR} e mês: ${MONTH}\033[0m"
    mkdir $COURT

    sudo ./executor --in=${COURT}.json \
    --def-run-env=MONTH:${MONTH} \
    --def-run-env=YEAR:${YEAR} \
    --def-run-env=COURT:${COURT} \
    --def-run-env=DOWNLOAD_TIMEOUT:${DOWNLOAD_TIMEOUT} \
    --def-run-env=TIME_BETWEEN_STEPS:${TIME_BETWEEN_STEPS} \
    --def-run-env=GENERAL_TIMEOUT:${GENERAL_TIMEOUT} \
    > ${COURT}/${YEAR}_${MONTH}.out 2> ${COURT}/${YEAR}_${MONTH}.err

    echo -e "\033[42;1;37mExecutado com sucesso!\033[0m"
done
