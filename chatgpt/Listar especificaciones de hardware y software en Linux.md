# Listar especificaciones de hardware y software en Linux

> **Quiero un comando de Ubuntu Bash Linux que me permita ver las especificaciones de hardware y software de mi computadora y grabarlas en un archivo de texto.**

El comando que puede usar en Ubuntu Bash Linux para ver las especificaciones de hardware y software de su computadora y guardarlas en un archivo de texto es:

`sudo lshw > especificaciones.txt`

Este comando utiliza el comando *lshw* (List Hardware) para mostrar la información detallada sobre el hardware de su computadora y el operador > para redirigir la salida del comando a un archivo de texto llamado especificaciones.txt. La opción sudo se utiliza para obtener permisos de superusuario y acceder a la información detallada del sistema.

Tenga en cuenta que la salida de este comando puede ser bastante extensa, dependiendo de la complejidad de su sistema. Para obtener una salida más legible, puede utilizar otras herramientas como *hwinfo* o *inxi*. Además, para obtener información detallada sobre el software instalado en su sistema, puede utilizar el comando `dpkg -l`.

:#ChatGPT
