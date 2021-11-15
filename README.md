# Automatizador de coletas
## Como rodar
Altere a primeira linha para bash, caso use bash:
 ```sh
 #!/bin/bash
 ```
Altere a variavel `EXECUTOR_CMD` para o caminho do `executor/cmd` completo:
 ```sh
 # Caminho do executor cmd
 EXECUTOR_CMD=/home/marcos/dadosjusbr/coletar/executor/cmd
 ```
Dê permissão de execução:
 ```sh
 chmod +x exec.sh
 ```
Execute em seguida com `sudo`:
 ```sh
 sudo ./exec.sh
 ```
 ## Não muito nescessario 
 Adicione no final do comando do executor para ter a saída em um arquivo separado.
 ```sh
 2> ${COURT,,}/${YEAR}_${MONTH}.err
 ```

