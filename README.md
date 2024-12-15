# Kali BSPWM Setup

Este repositorio contiene un script y configuraciones personalizadas para configurar un entorno minimalista y funcional con **bspwm**, **sxhkd**, **zsh**, **picom**, y **polybar** en Kali Linux.

## Características
- **Gestor de ventanas:** bspwm
- **Atajos de teclado:** sxhkd
- **Terminal personalizada:** Kitty con temas específicos
- **Shell avanzada:** Zsh con Powerlevel10k
- **Compositor:** Picom para transparencias y sombras
- **Fondos de pantalla:** Feh para el Wallpaper

## Requisitos
- Kali Linux (o Debian-based)
- Git instalado
- Acceso a internet para descargar dependencias

## Instalación

1. Actualizar paquetes

```shell
sudo apt update
sudo apt upgrade -y
```
2. Clona el repositorio y accede a él

```shell
git clone https://github.com/theBhacker/Custom-Bspwm.git
cd Custom-Bspwm
```
3. Damos permisos al script

```shell
chmod +x setup.sh
```

4. Ejecutamos el scirpt

```shell
./setup.sh
```
   ## Preview del entorno
 
   ![preview2](/Preview/preview2.png "preview2")
   ![preview1](/Preview/preview1.png "preview1")



## Atajos de Teclado en Español ⌨️🇪🇸
- <kbd>Windows</kbd> + <kbd>Enter</kbd>: Abre una ventana del emulador de terminal (kitty).  
- <kbd>Windows</kbd> + <kbd>W</kbd>: Cierra la ventana actual.  
- <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>R</kbd>: Reinicia la configuración de bspwm.  
- <kbd>Windows</kbd> + <kbd>Alt</kbd> + <kbd>Q</kbd>: Cierra la sesión.  
- <kbd>Windows</kbd> + <kbd>(⬆⬅⬇➡)</kbd>: Navega entre las ventanas en el espacio de trabajo actual.  
- <kbd>Windows</kbd> + <kbd>D</kbd>: Abre Rofi. Pulsa <kbd>Esc</kbd> para salir.  
- <kbd>Windows</kbd> + <kbd>(1,2,3,4,5,6,7,8,9,0)</kbd>: Cambia al espacio de trabajo correspondiente.  
- <kbd>Windows</kbd> + <kbd>T</kbd>: Cambia la ventana actual al modo mosaico.  
- <kbd>Windows</kbd> + <kbd>M</kbd>: Alterna la ventana actual al modo "completo" (no ocupa la polybar). Pulsa las mismas teclas para volver al modo mosaico.  
- <kbd>Windows</kbd> + <kbd>F</kbd>: Cambia la ventana actual al modo de pantalla completa (ocupa toda la pantalla, incluida la polybar).  
- <kbd>Windows</kbd> + <kbd>S</kbd>: Cambia la ventana actual al modo flotante.  
- <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>(1,2,3,4,5,6,7,8,9,0)</kbd>: Mueve la ventana actual a otro espacio de trabajo.  
- <kbd>Windows</kbd> + <kbd>Alt</kbd> + <kbd>(⬆⬅⬇➡)</kbd>: Redimensiona la ventana actual (solo funciona en modo flotante).  
- <kbd>Windows</kbd> + <kbd>Ctrl</kbd> + <kbd>(⬆⬅⬇➡)</kbd>: Cambia la posición de la ventana actual (solo funciona en modo flotante).  
- <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>F</kbd>: Abre Firefox.  
- <kbd>Windows</kbd> + <kbd>Shift</kbd> + <kbd>B</kbd>: Abre Burpsuite.  
- <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>L</kbd>: Bloquea la pantalla.  
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>⬆⬇</kbd>: Sube/baja el volumen.  
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>M</kbd>: Activa/desactiva el silencio.  
- <kbd>Windows</kbd> + <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>(⬆⬅⬇➡)</kbd>: Muestra una preselección y luego abre una ventana (kitty, Firefox, gestor de archivos, etc.).  
  - <kbd>Windows</kbd> + <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Espacio</kbd>: Deshace la preselección.  
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Enter</kbd>: Abre una subventana en la ventana actual.  
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Z</kbd>: Amplía la subventana actual.  
- <kbd>Ctrl</kbd> + <kbd>(⬆⬅⬇➡)</kbd>: Navega entre las subventanas en la ventana actual.  
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>R</kbd>: Redimensiona la subventana actual. Luego usa:  
   - <kbd>W</kbd> para 'Más ancho'.  
   - <kbd>N</kbd> para 'Más estrecho'.  
   - <kbd>T</kbd> para 'Más alto'.  
   - <kbd>S</kbd> para 'Más bajo'.  
   - <kbd>R</kbd> para 'Restablecer'.  
   - <kbd>Esc</kbd> para salir del modo de redimensionado.  
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>L</kbd>: Alterna la disposición de las subventanas.  
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>W</kbd>: Cierra la subventana o pestaña actual.  
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>T</kbd>: Abre una pestaña en la ventana actual.  
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Alt</kbd> + <kbd>T</kbd>: Renombra el título de la pestaña actual.  
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>(⬅➡)</kbd>: Navega entre pestañas actuales.  
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>C</kbd>: Copia al portapapeles.  
- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>V</kbd>: Pega desde el portapapeles.  
- <kbd>F1</kbd>: Copia al buffer A.  
- <kbd>F2</kbd>: Pega desde el buffer A.  
- <kbd>F3</kbd>: Copia al buffer B.  
- <kbd>F4</kbd>: Pega desde el buffer B.  
