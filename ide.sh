#!/bin/bash
#
# Скрипт запуска среды разработки Vim
#

if [[ $# != 1 ]]
then
    zenity --title "Vim IDE usage error" --error --text "Usage: vim_ide /path/to/project/dir."
    exit 1
fi

if [[ ! -e "$1/.vim/ide.vim" ]]
then
    zenity --title "Vim IDE usage error" --error --text "'$1' is not a Vim IDE project directory."
    exit 1
fi

cd "$1" || { zenity --title "Vim IDE usage error" --error --text "Can't change current directory to Vim IDE project directory '$1'."; exit 1; }


#java -jar /usr/src/Projects/userSoft/selenium_rc/selenium-server-1.0.3/selenium-server.jar -browserSessionReuse > ~/temp/s_rc.log &
#/home/alex/.eclipse/org.eclipse.platform_3.5.0_155965261/eclimd -vmargs -Dnailgun.server.port=9092 > ~/temp/eclimd.log &
#gvim --class=IDE -S .vim/ide.vim -geom 120x43 -font "Monospace 9"
vimx -S .vim/ide.vim --servername vim
