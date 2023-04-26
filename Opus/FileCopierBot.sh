#!/bin/bash
# Script para copiar archivos necesarios luego de instalar Ubuntu based distros

read -p "Hola, cariño. ¿Jugando con las distros otra vez? Jajaja.

Vamos a copiar algunos archivos que siempre usamos.

Ten en cuenta que se supone que ya creaste las credenciales de Github y ya clonaste el directorio bak.

Ingresa la frase clave para continuar: " respuesta

if [ "$respuesta" == "ok Flaca" ]; then
    echo "Ok, copiemos..."
   
    # Copiemos algunos archivos que siempre usamos
    # Ruta del archivo a copiar
    f01=/home/mart/bak/App/UD/kissdate2.sh
    f02=/home/mart/bak/App/UD/.bash_aliases
    f03=/home/mart/bak/App/UD/.bashrc
    f04=/home/mart/bak/App/UD/.vimrc
    f05=/home/mart/bak/App/UD/Cahier/UbuntuKeys.kdbx
    f06=/home/mart/bak/App/UD/xbin/inimart
    f07=/home/mart/bak/App/UD/xcondig/poster.jpg
# Ruta de destino donde se copiará el archivo
    d01=/home/mart/kissdate2.sh
    d02=/home/mart/.bash_aliases
    d03=/home/mart/.bashrc
    d04=/home/mart/.vimrc
    d05=/home/mart/Documentos/Cahier/Utilitarios/UbuntuKeys.kdbx
    d06=/home/mart/bin/inimart
    d07=/home/mart/.config/poster.jpg

# Copiar el archivo a la ruta de destino
cp $f01 $d01
cp $f02 $d02
cp $f03 $d03
cp $f04 $d04
cp $f05 $d05
cp $f06 $d06
cp $f07 $d07
# Hacer que el archivo en la ruta de destino sea ejecutable
chmod +x $f01
    
      
    
else
    echo "Bueno, parece que te arrepentiste, o ejecutaste esto por error, o ya estás viejo y no te acuerdas de la frase, jajaja."
fi
