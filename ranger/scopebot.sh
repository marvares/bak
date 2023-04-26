#!/bin/bash
# Script para copiar los archivos de configuración de Ranger

# Define la ruta de origen y de destino
ruta_origen=/home/mart/bak/ranger/scope.sh
ruta_destino=/home/mart/.config/ranger/

# Comprueba si la ruta de destino existe, y si no, la crea
if [ ! -d "$ruta_destino" ]; then
  mkdir -p "$ruta_destino"
fi

# Copia el archivo de origen a la ruta de destino
cp "$ruta_origen" "$ruta_destino"

# definimos el archivo final
endfile=/home/mart/.config/ranger/scope.sh

# Hacemos que el archivo final sea ejecutable
chmod +x $endfile





