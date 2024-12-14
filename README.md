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
1. Sigue los siguientes comandos:
   
   ```bash
   
   git clone https://github.com/theBhacker/Custom-Bspwm.git
   cd kali-bspwm-setup
   
   chmod +x setup.sh
   
   ./setup.sh
   ```
   
   #Atajos de Teclado ⌨️

- **Windows + Enter**: Abre una ventana del emulador de terminal (kitty).  
- **Windows + W**: Cierra la ventana actual.  
- **Windows + Alt + R**: Reinicia la configuración de bspwm.  
- **Windows + Alt + Q**: Cierra la sesión.  
- **Windows + (⬆⬅⬇➡)**: Navega entre las ventanas en el espacio de trabajo actual.  
- **Windows + D**: Abre Rofi. Pulsa Esc para salir.  
- **Windows + (1,2,3,4,5,6,7,8,9,0)**: Cambia al espacio de trabajo correspondiente.  
- **Windows + T**: Cambia la ventana actual al modo mosaico.  
- **Windows + M**: Alterna la ventana actual al modo "completo" (no ocupa la Polybar). Pulsa las mismas teclas para volver al modo mosaico.  
- **Windows + F**: Cambia la ventana actual al modo de pantalla completa (ocupa toda la pantalla, incluida la Polybar).  
- **Windows + S**: Cambia la ventana actual al modo flotante.  
- **Windows + Shift + (1,2,3,4,5,6,7,8,9,0)**: Mueve la ventana actual a otro espacio de trabajo.  
- **Windows + Alt + (⬆⬅⬇➡)**: Redimensiona la ventana actual (solo funciona si está en modo flotante).  
- **Windows + Ctrl + (⬆⬅⬇➡)**: Cambia la posición de la ventana actual (solo funciona si está en modo flotante).  
- **Windows + Shift + F**: Abre Firefox.  
- **Windows + Shift + B**: Abre Burpsuite.  
- **Ctrl + Alt + L**: Bloquea la pantalla.  
- **Ctrl + Shift + ⬆⬇**: Sube/baja el volumen.  
- **Ctrl + Shift + M**: Activa/desactiva el silencio.  
- **Windows + Ctrl + Alt + (⬆⬅⬇➡)**: Muestra una preselección y luego abre una ventana (kitty, Firefox, gestor de archivos, etc.).  
  - **Windows + Ctrl + Alt + Espacio**: Deshace la preselección.  
- **Ctrl + Shift + Enter**: Abre una subventana en la ventana actual.  
- **Ctrl + Shift + Z**: Amplía la subventana actual.  
- **Ctrl + (⬆⬅⬇➡)**: Navega entre las subventanas en la ventana actual.  
- **Ctrl + Shift + R**: Redimensiona la subventana actual. Luego usa:  
  - **W** para 'Más ancho'.  
  - **N** para 'Más estrecho'.  
  - **T** para 'Más alto'.  
  - **S** para 'Más bajo'.  
  - **R** para 'Restablecer'.  
  - **Esc** para salir del modo de redimensionado.  
- **Ctrl + Shift + L**: Alterna la disposición de las subventanas.  
- **Ctrl + Shift + W**: Cierra la subventana o pestaña actual.  
- **Ctrl + Shift + T**: Abre una pestaña en la ventana actual.  
- **Ctrl + Shift + Alt + T**: Renombra el título de la pestaña actual.  
- **Ctrl + Shift + (⬅➡)**: Navega entre pestañas actuales.  
- **Ctrl + Shift + C**: Copia al portapapeles.  
- **Ctrl + Shift + V**: Pega desde el portapapeles.  
- **F1**: Copia al buffer A.  
- **F2**: Pega desde el buffer A.  
- **F3**: Copia al buffer B.  
- **F4**: Pega desde el buffer B.  

