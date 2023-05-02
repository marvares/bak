# Algunas configuraciones que hay que hacer cuando se ejecuta Lubuntu

## Atajos de teclado

### Tecla F11
En general, para personalizar las teclas hay que ir a "Preferencias>Configuración de
LxQT>Centro de Configuración de LXQT"

1. Hay que desactivar el keybinding de la tecla F11. Ir a la ruta: /home/mart/.config/openbox/rc.xml
2. Buscar "F11" y eliminarlo
3. Buscar "ToggleFullScreen", y eliminarlo
4. Rebutear

### Llamar a Settings

1. Elegir F8
2. Elegir *Habilitado*
3. Pegar lo siguiente en la caja inferior: `/applications/lxqt-config.desktop`
4. Grabar
