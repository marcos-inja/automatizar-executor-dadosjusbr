#!/bin/bash

# variaveis
corPadrao="\033[0m"
preto="\033[0;30m"
vermelho="\033[0;31m"
verde="\033[0;32m"
marrom="\033[0;33m"
azul="\033[0;34m"
purple="\033[0;35m"
cyan="\033[0;36m"
cinzaClaro="\033[0;37m"
pretoCinza="\033[1;30m"
vermelhoClaro="\033[1;31m"
verdeClaro="\033[1;32m"
amarelo="\033[1;33m"
azulClaro="\033[1;34m"
purpleClaro="\033[1;35m"
cyanClaro="\033[1;36m"
branco="\033[1;37m"

echo "Imprimindo cores"

echo -e " \033[0;30m Preto  \033[0m             --> 0;30 "
echo -e " \033[0;31m Vermelho  \033[0m          --> 0;31 "
echo -e " \033[0;32m Verde  \033[0m             --> 0;32 "
echo -e " \033[0;33m Marrom  \033[0m            --> 0;33 "
echo -e " \033[0;34m Azul  \033[0m              --> 0;34 "
echo -e " \033[0;35m Purple  \033[0m            --> 0;35 "
echo -e " \033[0;36m Cyan  \033[0m              --> 0;36 "
echo -e " \033[0;37m Cinza Claro  \033[0m       --> 0;37 "
echo -e " \033[1;30m Preto Acinzentado \033[0m  --> 1;30 "
echo -e " \033[1;31m Vermelho Claro  \033[0m    --> 1;31 "
echo -e " \033[1;32m Verde Claro  \033[0m       --> 1;32 "
echo -e " \033[1;33m Amarelo \033[0m            --> 1;33 "
echo -e " \033[1;34m Azul  Claro \033[0m        --> 1;34 "
echo -e " \033[1;35m Purple Claro  \033[0m      --> 1;35 "
echo -e " \033[1;36m Cyan  Claro \033[0m        --> 1;36 "
echo -e " \033[1;37m Branco  \033[0m            --> 1;37 "

echo -e " \033[40;1;37m Fundo Preto    \033[0m     --> 40;?;? "
echo -e " \033[41;1;37m Fundo Vermelho \033[0m     --> 41;?;? "
echo -e " \033[42;1;37m Fundo Verde    \033[0m     --> 42;?;? "
echo -e " \033[43;1;37m Fundo Marrom   \033[0m     --> 43;?;? "
echo -e " \033[44;1;37m Fundo Azul     \033[0m     --> 44;?;? "
echo -e " \033[45;1;37m Fundo Purple   \033[0m     --> 45;?;? "
echo -e " \033[46;1;37m Fundo Cyan     \033[0m     --> 46;?;? "
echo -e " \033[47;1;37m Fundo Cinza    \033[0m     --> 47;?;? "

echo -e " \033[4;30m Sublinhado  \033[0m        --> 4;? "
echo -e " \033[5;30m Piscando    \033[0m        --> 5;? "
echo -e " \033[7;30m Invertido   \033[0m        --> 7;? "
echo -e " \033[8;30m Concealed   \033[0m        --> 8;? "

read MES1
read MES2

for i in {${MES1}..${MES2}}
do
	echo "${i}"
done

