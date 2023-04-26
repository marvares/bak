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
    mkdir /home/mart/Documentos/Cahier/Utilitarios
    mkdir /home/mart/Documentos/Acad
    mkdir /home/mart/Documentos/Trabajo
    mkdir /home/mart/Documentos/Trabajo/Asesor
    mkdir /home/mart/Documentos/Trabajo/Iris
    mkdir /home/mart/Documentos/Trabajo/Teleperformance
    mkdir /home/mart/Documentos/Trabajo/Teleperformance/2023
    
    # Instalamos
    sudo apt install git curl vim ranger synaptic keepassxc speedtest-cli ncal vim-gtk mpv vlc terminator clementine calibre yt-dlp
      
    
else
    echo "Bueno, parece que te arrepentiste, o ejecutaste esto por error, o ya estás viejo y no te acuerdas de la frase, jajaja."
fi

