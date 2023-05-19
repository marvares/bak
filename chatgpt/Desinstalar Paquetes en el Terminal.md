# Desinstalar en el Terminal

> **¿Cómo desintalo un programa usando el terminal de Ubuntu Linux?**

Puedes desinstalar un programa utilizando el terminal de Ubuntu Linux siguiendo estos pasos:

Abre una terminal en Ubuntu (puedes usar la combinación de teclas "Ctrl + Alt + T" para abrirla).

Usa el siguiente comando para buscar el nombre del paquete del programa que deseas desinstalar:

`dpkg -l | grep nombre_del_programa`

Asegúrate de reemplazar "nombre_del_programa" con el nombre del paquete del programa que deseas desinstalar.

Una vez que encuentres el nombre del paquete del programa, usa el siguiente comando para desinstalarlo:

`sudo apt-get remove nombre_del_paquete`

De nuevo, asegúrate de reemplazar "nombre_del_paquete" con el nombre del paquete del programa que deseas desinstalar.

Si deseas eliminar también los archivos de configuración del programa, puedes usar el siguiente comando:

` sudo apt-get purge nombre_del_paquete`

Esto eliminará también cualquier archivo de configuración asociado con el programa que estás desinstalando.

Eso es todo. Ahora deberías haber desinstalado el programa utilizando el terminal de Ubuntu Linux.

#ChatGPT
*Ojo, no siempre está bien ni comprobado lo que genera CHATGPT, precaución al aplicar esto.* 
