#!/bin/bash
# Script para copiar los archivos de configuración de Ranger

read -p "Hola, mi orgasmero. Vamos a configurar Ranger.

Este script va a crear los archivos de configuración personalizada a la ruta /home/mart/.config/ranger.

Si me das el ok, voy a ejecutar otros tres scripts, cada uno de los cuales creará uno de los tres archivos de configuración de Ranger desde el directorio de respaldo 'bak'. 

Ojo:

- Se supone que para poder hacer esto, tienes que haber clonado el repositorio 'bak' de nuestra cuenta Github. Si no lo haz hecho, se generará un error.
- Se supone que el archivo existente en 'bak' es la última versión o, al menos, la que quieres aplicar. Si no está actualizada, la configuración puede no funcionar. 

Si está todo correcto, dame el ok, cariño.

Ingresa la frase clave para continuar: " respuesta

if [ "$respuesta" == "ok Flaca" ]; then
    echo "Ok, creemos esos archivos..."
# Ejecuta el primer script
bash /home/mart/bak/ranger/rcbot.sh

# Ejecuta el segundo script
bash /home/mart/bak/ranger/riflebot.sh

# Ejecuta el tercer script
bash /home/mart/bak/ranger/scopebot.sh

else
    echo "Bueno, parece que te arrepentiste, o ejecutaste esto por error, o ya estás viejo y no te acuerdas de la frase, jajaja."
fi





