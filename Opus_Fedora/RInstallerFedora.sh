#!/bin/bash
# Script para instalar R en Fedora based distros


# Vamos a instalar R en una distro basada en Fedora.

sudo dnf install R

# To enable this Copr repository in your system: 

sudo dnf install 'dnf-command(copr)'
sudo dnf copr enable iucar/cran
sudo dnf install R-CoprManager

# Para instalar rstudio (dudoso si esto funciona):

sudo dnf install rstudio-desktop

# Instalo de una vez los parches conocidos por mí a la fecha:

sudo dnf install libcurl-devel
sudo dnf install cmake
sudo dnf install openssl-devel
    
