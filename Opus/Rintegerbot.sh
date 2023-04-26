#!/bin/bash
# Script para hacer la instalación completa de R

read -p "Hola, mi orgasmero. Vamos a instalar R y sus complementos.

Este script va a ejecutar primero el RInstaller (que ejecuta la secuencia de instalación según CRAN a la fecha 26/04/2023, incluyendo r-base, r-base-core, recomendados y tidyverse), y luego el Rbot, que instala algunos parches para que R corra mejor.

Ojo:

- Se supone que para poder hacer esto, tienes que haber clonado el repositorio 'bak' de nuestra cuenta Github. Si no lo haz hecho, se generará un error.
- Se supone que el archivo existente en 'bak' es la última versión o, al menos, la que quieres aplicar. Si no está actualizada, la configuración puede no funcionar. 

Si está todo correcto, dame el ok, cariño.

Ingresa la frase clave para continuar: " respuesta

if [ "$respuesta" == "ok Flaca" ]; then
    echo "Ok, creemos esos archivos..."
# Ejecuta el primer script
bash /home/mart/bak/Opus/Rinstallerbot.sh

# Ejecuta el segundo script
bash /home/mart/bak/Opus/Rbot.sh

else
    echo "Bueno, parece que te arrepentiste, o ejecutaste esto por error, o ya estás viejo y no te acuerdas de la frase, jajaja."
fi

