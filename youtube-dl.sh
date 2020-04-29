#!/bin/bash
echo "------------------------------"
echo "DOWNLOADS DE VIDEOS DO YOUTUBE"
echo "------------------------------"
echo ""
echo "Qual formato deseja Salvar: MP3 ou MKV? "
read mode
echo "Coloque o Link do Youtube: "
read link
echo "[ $(tput setaf 14) LINK $(tput setaf 2) ] PEGO O LINK DO YOUTUBE [$link]"
echo "[ $(tput setaf 13) MODE $(tput setaf 2) ] SELECIONADO O MODO PARA DOWNLOAD [$mode]"
if [[ $mode = "MP3" ]]
then
    echo -e youtube-dl -x --audio-format mp3 $link
fi
if [[ $mode = "MKV" ]]
then 
   echo -e youtube-dl $link
fi
echo "[ $(tput setaf 3) DONE $(tput setaf 2) ] DOWNLOAD DO VIDEO CONCLUIDA!"
