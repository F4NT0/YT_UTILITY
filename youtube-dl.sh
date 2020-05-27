#!/bin/bash

# Variáveis
mp3="youtube-dl -x --audio-format mp3";
mkv="youtube-dl";

echo "-----------------------"
echo "DOWNLOAD YOUTUBE VIDEOS"
echo "-----------------------"
echo ""
echo "[ $(tput setaf 4) INFO $(tput sgr0) ] SELECT THE FORMAT [MP3 / MKV]: "
read mode;
echo "[ $(tput setaf 4) INFO $(tput sgr0) ] PASTE THE URL [CTRL + SHIFT + V]: "
read link;
echo "[ $(tput setaf 4) INFO $(tput sgr0) ] INSERT THE DIRECTORY NAME [Example: Desktop]: "
read input
destiny=$(locate -l 1 -b $input) #Localiza e salva o primeiro diretorio encontrado
cd $destiny
echo "[ $(tput setaf 13) LINK $(tput sgr0) ] YOUTUBE URL READED [$link]"
echo "[ $(tput setaf 13) MODE $(tput sgr0) ] DOWNLOAD MODE SELECTED [$mode]"
echo "[ $(tput setaf 13) DIR  $(tput sgr0) ] DIRECTORY ACCEPTED [$destiny]"
if [[ $mode = "MP3" ]]
then
    echo "[ $(tput setaf 13) RUN $(tput sgr0) ] DOWNLOADING...."    
    $mp3 $link
fi
if [[ $mode = "MKV" ]]
then 
    echo "[ $(tput setaf 3) RUN $(tput sgr0) ] DOWNLOADING...."
    $mkv $link
fi


echo "[ $(tput setaf 3) DONE $(tput sgr0) ] DOWNLOAD COMPLETE!"
