#!/bin/bash
# Script para instalar programas necesarios luego de instalar Ubuntu based distros

read -p "Hola, cariño. ¿Jugando con las distros otra vez? Jajaja.

Vamos a crear algunos directorios e instalar algunos de nuestros programas de siempre, los que solemos usar en otras distros basadas en Ubuntu y/o Debian.

Ten en cuenta que hay otros programas que tendrás que instalar vía Flatpak o similares, como Autokey, Joplin, Jamovi y otros.

Y que tenemos una serie de scripts especiales aparte para instalar R y RStudio.

Ingresa la frase clave para continuar: " respuesta

if [ "$respuesta" == "ok Flaca" ]; then
    echo "Ok, instalemos..."
    # Coloca aquí las líneas de código para realizar la tarea que desees
    
    # Actualizar los repositorios
    sudo apt-get update

    # Creamos algunos directorios que siempre usamos
    mkdir /home/mart/bin
    mkdir /home/mart/Documentos/R_Home
    mkdir /home/mart/Documentos/Cahier
    mkdir /home/mart/Documentos/Cahier/Utilitarios
    mkdir /home/mart/Documentos/Acad
    mkdir /home/mart/Documentos/Trabajo
    mkdir /home/mart/Documentos/Trabajo/Asesor
    mkdir /home/mart/Documentos/Trabajo/Iris
    mkdir /home/mart/Documentos/Trabajo/Teleperformance
    mkdir /home/mart/Documentos/Trabajo/Teleperformance/2023
    
    # Instalamos
    sudo apt install jp2a 
    sudo apt install curl 
    sudo apt install vim 
    sudo apt install ranger 
    sudo apt install synaptic 
    sudo apt install keepassxc
    sudo apt install speedtest-cli 
    sudo apt install ncal 
    sudo apt install vim-gtk3
    sudo apt install mpv 
    sudo apt install vlc 
    sudo apt install fzf 
    sudo apt install clementine 
    sudo apt install calibre 
    sudo apt install make 
    sudo apt install fonts-powerline
    sudo apt install audacity
    sudo apt install texlive-latex-extra
    sudo apt install ueberzug
    sudo apt install neofetch
    sudo add-apt-repository ppa:tomtomtom/yt-dlp    # Add ppa repo to apt
    sudo apt update                                 # Update package list
    sudo apt install yt-dlp                         # Install yt-dlp
    sudo apt autoremove
    
    # Configuramos git y clonamos Vundle
    git config --global user.email "francisco.vargas@pucp.pe"
    git config --global user.name "Martín Vargas"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
    cd /home/mart/Documentos
    git clone git@github.com:marvares/Nts.git /home/mart/Documentos/Nts
    
else
    echo "Bueno, parece que te arrepentiste, o ejecutaste esto por error, o ya estás viejo y no te acuerdas de la frase, jajaja."
fi

