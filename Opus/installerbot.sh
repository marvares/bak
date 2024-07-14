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
    sudo apt-get update
    sudo apt-get upgrade
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
    sudo apt install -y jp2a 
    sudo apt install -y curl 
    sudo apt install -y newsboat
    sudo apt install -y pass
    sudo apt install -y perl
    sudo apt install -y cmus
    sudo apt install -y ranger 
    sudo apt install -y synaptic 
    sudo apt install -y keepassxc
    sudo apt install -y speedtest-cli 
    sudo apt-get install -y gnome-tweaks
    sudo apt install -y ncal 
    sudo apt install -y vim-gtk3
    sudo apt install -y mpv 
    sudo apt install -y vlc 
    sudo apt install -y fzf 
    sudo apt install -y clementine 
    sudo apt-get install -y tesseract-ocr
    sudo apt-get install -y gimagereader
    sudo apt install -y make 
    sudo apt install -y fonts-powerline
    sudo apt install -y texlive-latex-extra
    sudo apt install -y autokey-qt 
    sudo apt install -y neofetch
    sudo add-apt-repository ppa:tomtomtom/yt-dlp    # Add ppa repo to apt
    sudo apt update                                 # Update package list
    sudo apt install -y yt-dlp                      # Install yt-dlp
    sudo apt install -y vim
    sudo app install -y neovim
    sudo apt install -y os-prober
    sudo add-apt-repository ppa:costales/yaru-colors-folder-color
    sudo apt update
    sudo apt install -y folder-color yaru-colors-folder-color
    sudo add-apt-repository ppa:appimagelauncher-team/stable
    sudo apt update
    sudo apt install appimagelauncher
    # Para instalar dependencias para el fzf plugin de vim:
	sudo apt-get install -y ripgrep	
	sudo apt-get install -y silversearcher-ag
    # sudo apt install -y flatpak
    # flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    # flatpak install flathub org.jamovi.jamovi
    # flatpak install -y flathub com.mattjakeman.ExtensionManager
    # sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    # echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update
    # sudo apt install -y brave-browser
    # wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
    sudo apt autoremove
    timedatectl set-local-rtc 1 # Este comando debería solucionar el mismatch de relojes
    en un dual boot con Windows
    
    # Configuramos git 
    git config --global user.email "francisco.vargas@pucp.pe"
    git config --global user.name "Martín Vargas"
    cd /home/mart/
    git clone git@github.com:VundleVim/Vundle.vim.git
    cd /home/mart/Documentos
    git clone git@github.com:marvares/Nts.git /home/mart/Nextcloud/Dox/Nts
    git clone git@github.com:marvares/sturdy-octo-journey.git /home/mart/Nextcloud/Dox/R_Home/sturdy-octo-journey
    git clone git@github.com:marvares/acoso-IOP-PUCP.git /home/mart/Nextcloud/Dox/R_Home/acoso-IOP-PUCP
    git clone git@github.com:marvares/Congreso_2022.git /home/mart/Nextcloud/Dox/R_Home/Congreso_2022

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    bash <(curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh)
    atuin register -u <USERNAME> -e <EMAIL>
    atuin import auto
    atuin sync

# else
   #  echo "Bueno, parece que te arrepentiste, o ejecutaste esto por error, o ya estás viejo y no te acuerdas de la frase, jajaja."
# fi

