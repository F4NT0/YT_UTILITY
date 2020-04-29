#!/bin/bash
echo "------------------------------"
echo "DOWNLOADS DE VIDEOS DO YOUTUBE"
echo "------------------------------"
echo ""
echo "Qual formato deseja Salvar: MP3 ou MKV? "
read mode
echo "Coloque o Link do Youtube: "
read link
echo "[$(tput setaf 14)LINK ] PEGO O LINK DO YOUTUBE [$(link)]"
echo "[$(tput setaf 13)MODE ] SELECIONADO O MODO PARA DOWNLOAD [$(mode)]"
if [[ $mode = "MP3" ]]
then
    youtube-dl -x --audio-format mp3 $link
if [[ $mode = "MKV" ]]
then 
    youtube-dl $link
echo "$(tput setaf 1)DONE ] DOWNLOAD DO VIDEO CONCLUIDA!"