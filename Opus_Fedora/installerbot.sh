#!/bin/bash
# Script para instalar programas necesarios luego de instalar Fedora based distros

# read -p "Hola, cariño. ¿Se te dio por Fedora esta vez? Jajaja.

# Vamos a crear algunos directorios e instalar algunos de nuestros programas de siempre, los que solemos usar en otras distros basadas en Fedora.

# Ten en cuenta que hay otros programas que tendrás que instalar vía Flatpak o similares, como Autokey, Joplin, Jamovi y otros.

# Y que tenemos una serie de scripts especiales aparte para instalar R y RStudio.

# Ingresa la frase clave para continuar: " respuesta

# if [ "$respuesta" == "ok Flaca" ]; then
    # echo "Ok, instalemos..."
    # Coloca aquí las líneas de código para realizar la tarea que desees
    
    # Actualizar los repositorios
    sudo dnf update

    # Creamos algunos directorios que siempre usamos
    mkdir /home/mart/bin
    mkdir /home/mart/.config/nvim
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
    sudo dnf install -y jp2a
    sudo dnf install -y curl 
    sudo dnf install -y ranger 
    sudo dnf install -y syndnfic 
    sudo dnf install -y keepassxc
    sudo dnf install -y speedtest-cli 
    sudo dnf install -y ncal 
    sudo dnf install -y vim-gtk3
    sudo dnf install -y mpv 
    sudo dnf install -y vlc 
    sudo dnf install -y fzf 
    sudo dnf install -y clementine 
    sudo dnf install -y calibre 
    sudo dnf install -y make 
    sudo dnf install -y fonts-powerline
    sudo dnf install -y audacity
    sudo dnf install -y texlive-latex-extra
    sudo dnf install -y autokey-qt 
    sudo dnf install -y neofetch
    sudo dnf install -y neovim
    sudo dnf install -y os-prober
    sudo dnf update
    
    # Configuramos git y clonamos Vundle
    git config --global user.email "francisco.vargas@pucp.pe"
    git config --global user.name "Martín Vargas"
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
    cd /home/mart/Documentos
    git clone git@github.com:marvares/Nts.git /home/mart/Documentos/Nts
    git clone git@github.com:marvares/sturdy-octo-journey.git /home/mart/Documentos/R_Home/sturdy-octo-journey
    git clone git@github.com:marvares/acoso-IOP-PUCP.git /home/mart/Documentos/R_Home/acoso-IOP-PUCP
    git clone git@github.com:marvares/Congreso_2022.git /home/mart/Documentos/R_Home/Congreso_2022
    
# else
   #  echo "Bueno, parece que te arrepentiste, o ejecutaste esto por error, o ya estás viejo y no te acuerdas de la frase, jajaja."
# fi

