#!/bin/bash
# Script para instalar R en Ubuntu based distros

read -p "Hola, cariño. ¿Jugando con las distros otra vez? Jajaja.

Vamos a R en una distro basada en Ubuntu y/o Debian.

Ingresa la frase clave para continuar: " respuesta

if [ "$respuesta" == "ok Flaca" ]; then
    echo "Ok, instalemos..."
    # Coloca aquí las líneas de código para realizar la tarea que desees
    
    # Actualizar los repositorios
    sudo apt-get update

    	# update indices
	sudo apt update -qq
	# install two helper packages we need
	sudo apt install --no-install-recommends software-properties-common dirmngr
	# add the signing key (by Michael Rutter) for these repos
	# To verify key, run gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc 
	# Fingerprint: E298A3A825C0D65DFD57CBB651716619E084DAB9
	wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
	# add the R 4.0 repo from CRAN -- adjust 'focal' to 'groovy' or 'bionic' as needed
	sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
    
    	# Instalamos
   	sudo apt install --no-install-recommends r-base
   	# Añadimos repo de R versión 4
   	sudo add-apt-repository ppa:c2d4u.team/c2d4u4.0+
   	# Instalamos paquetes de R recomendados
   	sudo apt install --no-install-recommends r-cran-rstan
   	# Instalamos tidyverse
   	sudo apt install --no-install-recommends r-cran-tidyverse
      	
    
else
    echo "Bueno, parece que te arrepentiste, o ejecutaste esto por error, o ya estás viejo y no te acuerdas de la frase, jajaja."
fi

