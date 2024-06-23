#!/bin/bash
# Script para instalar programas necesarios luego de instalar Ubuntu based distros

# read -p "Hola, cariño. ¿Jugando con las distros otra vez? Jajaja.

# Vamos a crear algunos directorios e instalar algunos de nuestros programas de siempre, los que solemos usar en otras distros basadas en Ubuntu y/o Debian.

# Ten en cuenta que hay otros programas que tendrás que instalar vía Flatpak o similares, como Autokey, Joplin, Jamovi y otros.

# Y que tenemos una serie de scripts especiales aparte para instalar R y RStudio.

# Ingresa la frase clave para continuar: " respuesta

# if [ "$respuesta" == "ok Flaca" ]; then
    # echo "Ok, instalemos..."
    # Coloca aquí las líneas de código para realizar la tarea que desees
    
    # Actualizar los repositorios
    sudo dnf update -y
    sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
    sudo dnf update -y
    # Creamos algunos directorios que siempre usamos
    mkdir /home/mart/bin
    mkdir /home/mart/.newsboat
   
    # Instalamos
    sudo dnf install -y vim
    sudo dnf install -y neovim
    sudo dnf install -y vim-X11
    sudo dnf install -y chafa 
    sudo dnf install -y curl 
    sudo dnf install -y newsboat
    sudo dnf install -y perl
    sudo dnf install -y cmus
    sudo dnf install -y ranger 
    sudo dnf install -y keepassxc
    sudo dnf install -y speedtest-cli 
    sudo dnf install -y mpv 
    sudo dnf install -y vlc 
    sudo dnf install -y fzf 
    sudo dnf install -y clementine 
    sudo dnf install -y tesseract tesseract-langpack-spa
    sudo dnf install -y gimagereader-gtk
    sudo dnf install -y make 
    sudo dnf install -y texlive-scheme-full
    sudo dnf install -y autokey-gtk
    sudo dnf install -y fastfetch
    sudo dnf update                                 # Update package list
    sudo dnf install -y yt-dlp                      # Install yt-dlp

    sudo dnf install -y os-prober
    # Para instalar dependencias para el fzf plugin de vim:
	sudo dnf install -y ripgrep	
	sudo dnf install -y silversearcher-ag

    sudo dnf update
    sudo dnf autoremove
    timedatectl set-local-rtc 1 # Este comando debería solucionar el mismatch de relojes
    en un dual boot con Windows
    
    # Configuramos git 
    git config --global user.email "francisco.vargas@pucp.pe"
    git config --global user.name "Martín Vargas"
    cd /home/mart/Documentos
    git clone git@github.com:marvares/Nts.git /home/mart/Nextcloud/Dox/Nts
    git clone git@github.com:marvares/sturdy-octo-journey.git /home/mart/Nextcloud/Dox/R_Home/sturdy-octo-journey
    git clone git@github.com:marvares/acoso-IOP-PUCP.git /home/mart/Nextcloud/Dox/R_Home/acoso-IOP-PUCP
    git clone git@github.com:marvares/Congreso_2022.git /home/mart/Nextcloud/Dox/R_Home/Congreso_2022

# else
   #  echo "Bueno, parece que te arrepentiste, o ejecutaste esto por error, o ya estás viejo y no te acuerdas de la frase, jajaja."
# fi

