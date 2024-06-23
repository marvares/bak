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
    sudo pacman -Syu
    # Creamos algunos directorios que siempre usamos
    mkdir /home/mart/bin
    mkdir /home/mart/.newsboat
    mkdir /home/mart/Nextcloud/Dox/R_Home
    mkdir /home/mart/Nextcloud/Dox/Cahier
    mkdir /home/mart/Nextcloud/Dox/Cahier/Utilitarios
    mkdir /home/mart/Nextcloud/Dox/Acad
    mkdir /home/mart/Nextcloud/Dox/Trabajo
    mkdir /home/mart/Nextcloud/Dox/Trabajo/Asesor
    mkdir /home/mart/Nextcloud/Dox/Trabajo/Iris
    mkdir /home/mart/Nextcloud/Dox/Trabajo/Teleperformance
    
    # Instalamos
    sudo pacman -S -Y jp2a 
    sudo pacman -S -Y curl 
    sudo pacman -S -Y newsboat
    sudo pacman -S -Y pass
    sudo pacman -S -Y perl
    sudo pacman -S -Y cmus
    sudo pacman -S -Y ranger 
    sudo pacman -S -Y synaptic 
    sudo pacman -S -Y keepassxc
    sudo pacman -S -Y speedtest-cli 
    sudo pacman -S -Y gnome-tweaks
    sudo pacman -S -Y ncal 
    sudo pacman -S -Y vim-gtk3
    sudo pacman -S -Y mpv 
    sudo pacman -S -Y vlc 
    sudo pacman -S -Y fzf 
    sudo pacman -S -Y clementine 
    sudo pacman -S -Y tesseract-ocr
    sudo pacman -S -Y gimagereader
    sudo pacman -S -Y make 
    sudo pacman -S -Y fonts-powerline
    sudo pacman -S -Y texlive-latex-extra
    sudo pacman -S -Y autokey-qt 
    sudo pacman -S -Y neofetch
    sudo add-apt-repository ppa:tomtomtom/yt-dlp    # Add ppa repo to apt
    sudo apt update                                 # Update package list
    sudo pacman -S -Y yt-dlp                      # Install yt-dlp
    sudo pacman -S -Y vim
    sudo pacman -S -Y os-prober
    # Para instalar dependencias para el fzf plugin de vim:
	sudo pacman -S -Y ripgrep	
	sudo pacman -S -Y silversearcher-ag
    # sudo pacman -S -Y flatpak
    # flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    # flatpak install flathub org.jamovi.jamovi
    # flatpak install -y flathub com.mattjakeman.ExtensionManager
    # sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    # echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update
    # sudo pacman -S -Y brave-browser
    # wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
    sudo apt autoremove
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

