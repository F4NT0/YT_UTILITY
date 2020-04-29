#!/bin/bash

# Variáveis
mp3="youtube-dl -x --audio-format mp3";
mkv="youtube-dl";

echo "------------------------------"
echo "DOWNLOADS DE VIDEOS DO YOUTUBE"
echo "------------------------------"
echo ""
echo "[ $(tput setaf 4) INFO $(tput setaf 2) ] SELECIONE O FORMATO DO VIDEO [MP3 / MKV]: "
read mode;
echo "[ $(tput setaf 4) INFO $(tput setaf 2) ] COLE O LINK DO VIDEO AQUI [CTRL + SHIFT + V]: "
read link;
echo "[ $(tput setaf 4) INFO $(tput setaf 2) ] DIGITE O LOCAL DE DESTINO: "
read input
destiny=$(locate -l 1 -b $input) #Localiza e salva o primeiro diretorio encontrado
cd $destiny
echo "[ $(tput setaf 13) LINK $(tput setaf 2) ] PEGO O LINK DO YOUTUBE [$link]"
echo "[ $(tput setaf 13) MODE $(tput setaf 2) ] SELECIONADO O MODO PARA DOWNLOAD [$mode]"
if [[ $mode = "MP3" ]]
then
    echo "[ $(tput setaf 13) RUN $(tput setaf 2) ] FAZENDO DOWNLOAD DO VIDEO"    
    $mp3 $link
fi
if [[ $mode = "MKV" ]]
then 
    echo "[ $(tput setaf 3) RUN $(tput setaf 2) ] FAZENDO DOWNLOAD DO VIDEO"
    $mkv $link
fi


echo "[ $(tput setaf 3) DONE $(tput setaf 2) ] DOWNLOAD DO VIDEO CONCLUIDA!"
