#!/bin/bash

echo "[$(tput setaf 3) START $(tput setaf 2)] INICIANDO A INSTALAÇÃO"
echo "[$(tput setaf 14) RUN $(tput setaf 2) ] INSTALAÇÃO DO YOUTUBE-DL"
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
echo "[$(tput setaf 14) RUN $(tput setaf 2) ] CONFIGURAÇÃO DO YOUTUBE-DL"
sudo chmod a+rx /usr/local/bin/youtube-dl
echo "[$(tput setaf 11) DONE $(tput setaf 2)] INSTALAÇÃO CONCLUIDA!"

