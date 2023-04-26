#!/bin/bash

# Obtener la hora actual del sistema en formato de 24 horas
hora=$(date +"%H")

# Comprobar si la hora actual está entre las 13:00 y 13:59 horas
if [ $hora -ge 13 ] && [ $hora -lt 14 ]; then
  # Si es así, ejecutar el comando "x"
  message="¡Hola cariño! 
Hoy es $(date '+%A, %d %B %Y y es la %I:%M %p'). 
Recuerda: tú eres mi orgasmero ;-)"
else
  # De lo contrario, ejecutar el comando "y"
  message="¡Hola cariño! 
Hoy es $(date '+%A, %d %B %Y y son las %I:%M %p'). 
Recuerda: tú eres mi orgasmero ;-)"
fi

# Ejecutar el comando correspondiente
jp2a --width=48 /home/mart/.config/poster.jpg
echo $message
