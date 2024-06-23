#!/bin/bash
# Script para hacer la instalación completa de distro basada en Ubuntu

read -p "Hola, Cariño. Vamos a instalar una nueva distro basada en Ubuntu.

Este script va a ejecutar en orden los scripts siguientes:

- installerbot.sh: Instala programas y crea los directorios principales
- FileCopierbot.sh: Copia archivos a los directorios creados por el script anterior
- rangerbot.sh: Copia la configuración personalizada de Ranger

Si está todo correcto, dame el ok, amor.

Ingresa la frase clave para continuar: " respuesta

if [ "$respuesta" == "ok Flaca" ]; then
    echo "Ok, empecemos..."
# Ejecuta el primer script
bash /home/mart/bak/Opus_Fedora/installerbot.sh

# Ejecuta el segundo script
bash /home/mart/bak/Opus_Fedora/FileCopierbot.sh

# Ejecuta el tercer script
bash /home/mart/bak/Opus_Fedora/rangerbot.sh

# Ejecuta el cuarto script
bash /home/mart/bak/Opus_Fedora/RInstallerFedora.sh

else
    echo "Bueno, parece que te arrepentiste, o ejecutaste esto por error, o ya estás viejo y no te acuerdas de la frase, jajaja."
fi

