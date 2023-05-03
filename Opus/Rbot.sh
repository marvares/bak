#!/bin/bash
# Script para instalar programas necesarios para correr R y RStudio en Ubuntu based distros

# read -p "Hola, cariño. ¿Jugando con las distros otra vez? Jajaja.

# Vamos a instalar programas necesarios para correr R y RStudio en Ubuntu y otras distros basadas en Ubuntu y/o Debian.

# Ingresa la frase clave para continuar: " respuesta

# if [ "$respuesta" == "ok Flaca" ]; then
#     echo "Ok, instalemos..."
    # Coloca aquí las líneas de código para realizar la tarea que desees
    sudo apt install gfortran ;
    sudo apt-get install liblapack-dev -y ; sudo apt-get install liblapack3 -y ; sudo apt-get install libopenblas-base -y ; sudo apt-get install libopenblas-dev -y ;
    sudo apt-get install libfontconfig1-dev -y ;
    sudo apt-get install libxml2-dev -y ;
    sudo apt install libcurl4-openssl-dev -y ;
    sudo apt install libv8-dev -y ;
# else
#     echo "Bueno, parece que te arrepentiste, o ejecutaste esto por error, o ya estás viejo y no te acuerdas de la frase, jajaja."
# fi

