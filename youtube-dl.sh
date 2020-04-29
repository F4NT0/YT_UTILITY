#!/bin/bash
printf "------------------------------"
printf "DOWNLOADS DE VIDEOS DO YOUTUBE"
printf "------------------------------"
echo ""
echo "Qual formato deseja Salvar: MP3 ou MKV? "
read mode
echo "Coloque o Link do Youtube: "
read link
printf "[$(tput setaf 14)LINK ] PEGO O LINK DO YOUTUBE [$(link)]"
printf "[$(tput setaf 13)MODE ] SELECIONADO O MODO PARA DOWNLOAD [$(mode)]"
if [[ $mode = "MP3" ]]
then
    youtube-dl -x --audio-format mp3 $link
if [[ $mode = "MKV" ]]
then 
    youtube-dl $link