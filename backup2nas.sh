#!/bin/bash

# This script should not be modified by the user.

echo -e "\e[32m\e[40m       ____             __              ___   _   _____   _____    "
echo -e "\e[31m\e[40m      / __ )____ ______/ /____  ______ |__ \ / | / /   | / ___/    "
echo -e "\e[33m\e[40m     / __  / __ \`/ ___/ //_/ / / / __ \\__/ //  |/ / /| | \\__ \\     "
echo -e "\e[34m\e[40m    / /_/ / /_/ / /__/ ,< / /_/ / /_/ / __// /|  / ___ |___/ /     "
echo -e "\e[35m\e[40m   /_____/\__,_/\___/_/|_|\\__,_/ .___/____/_/ |_/_/  |_/____/      "
echo -e "\e[95m\e[40m                              /_/                                  "
echo -e "\e[90m\e[40m"

dt=$(date +"%Y-%m-%d_%H_%M_%S")

echo "$dt" >> logs/log.txt

function do_backup() {
    src=$2/
    dest=$1/$2/
    bkp=$1/$3/$2/$dt/

    echo -e ""
    echo -e "\e[32mRoot folder : \e[37m$(pwd)"

    echo -e "\e[34m\n== Rule =="
    echo -e "\e[32m  Source : \e[37m$src"
    echo -e "\e[32m  Dest : \e[37m$dest"
    echo -e "\e[32m  Bkp : \e[37m$bkp"

    echo -e "\n\e[92mStarting rsync"
    echo -e "\e[37m"

    sshpass -p "$6" rsync -azvhbW --delete --info=progress2 --backup-dir=$bkp $src $5@$4:$dest
}
