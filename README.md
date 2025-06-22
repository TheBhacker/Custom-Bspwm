<div align="center">

![PNG](/Preview/bspwm-logo1.png "logo")
   
</div>

<div align="center">

### **ENTORNO CUSTOM DE BSPWM**
> *Cusotm Linux(Debian based) enviromment from [bspwm](https://github.com/baskerville/bspwm) and [sxhkd]() using [kitty](https://github.com/kovidgoyal/kitty), [polybar](https://github.com/VaughnValle/blue-sky), [picom](https://github.com/yshui/picom), [rofi](https://github.com/davatorium/rofi) and [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)*

![GitHub last commit](https://img.shields.io/github/last-commit/theBhacker/Custom-Bspwm)
![GitHub issues](https://img.shields.io/github/issues-raw/theBhacker/Custom-Bspwm)
![GitHub repo size](https://img.shields.io/github/repo-size/theBhacker/Custom-Bspwm)
[![GitLab](https://img.shields.io/static/v1?label=gitlab&logo=gitlab&color=E24329&message=mirrored)](https://gitlab.com/theBhacker/Custom-Bspwm)
![GitHub](https://img.shields.io/github/license/theBhacker/Custom-Bspwm)
![GitHub Repo stars](https://img.shields.io/github/stars/theBhacker/Custom-Bspwm?style=social)

</div>

<br>

> [!IMPORTANT]
> ## Requisitos
> - Kali Linux (o Debian-based)
> - Git y Curl instalados
> - Acceso a internet para descargar dependencias
> - Tener zsh como shell predeterminada o almenos tener .zshrc.

<br>

## Características
<br>

| Programs   | Using             |
| ---------- | ----------------- |
| WM         | bspwm             |
| OS         | kali linux        |
| Terminal   | kitty             |
| Shell      | ohmyzsh & p10k    |
| Editor     | nvchad/neovim     |
| Compositor | picom             |
| Launcher   | rofi              |

<br>

## Preview del entorno

<br>

![PNG](/Preview/preview.png "bspwm")

<br>

<details>
<summary><strong>I N S T A L L A T I O N</strong></summary>
   
## Instalación

1. Actualizar paquetes

```shell
sudo apt update
sudo apt install git curl
sudo apt upgrade -y
```
2. Clona el repositorio y accede a él

```shell
git clone https://github.com/theBhacker/Custom-Bspwm.git
cd Custom-Bspwm
```
3. Damos permisos al script

```shell
chmod +x custom.sh
```

4. Ejecutamos el scirpt

```shell
./custom.sh
```
</details>

<br>

<details>
<summary><strong>K E Y B I N D S</strong></summary>
   
## Atajos de Teclado en Español ⌨️ 🇪🇸
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

## Shortcuts de la Zsh
- <kbd>Alt</kbd> + <kbd>.</kbd>: Insertar el argumento del comando anterior  
- <kbd>Ctrl</kbd> + <kbd>U</kbd>: Eliminar toda la línea  
- <kbd>Alt</kbd> + <kbd>Supr</kbd>: Eliminar una palabra  
- <kbd>Alt</kbd> + <kbd>(⬆⬅⬇➡)</kbd>: Desplazarse entre palabras  
- <kbd>Supr</kbd>: Eliminar la letra a la derecha del cursor  
- <kbd>Backspace</kbd>: Eliminar la letra a la izquierda del cursor  
- <kbd>Alt</kbd> + <kbd>Supr</kbd>: Eliminar la palabra a la derecha del cursor  
- <kbd>Alt</kbd> + <kbd>Backspace</kbd>: Eliminar la palabra la izquierda del cursor  
- <kbd>Home</kbd>: Desplazamiento al inicio de la línea    
- <kbd>End</kbd>: Desplazamiento al final de la línea    
- <kbd>Shift</kbd> + <kbd>Tab</kbd>: Deshacer la última acción  
- <kbd>Page Up</kbd>: Desplazarse hacia arriba en modo paginate  
- <kbd>Page Down</kbd>: Desplazarse hacia abajo en modo paginate  
- <kbd>Ctrl</kbd> + <kbd>R</kbd>: Mediante fzf nos autocompleta los archivos/directorios  
- <kbd>Ctrl</kbd> + <kbd>R</kbd>: Mediante fzf podemos ejecutar comandos del histórico de la zsh  
- <kbd>Esc</kbd> + <kbd>Esc</kbd>: Se activa el plugin sudo-zsh y nos añade sudo al principio del comando en la kitty  
- <kbd>setTarget</kbd>: Mediante esta función en la zsh seteamos el target en la polybar  
- <kbd>clearTarget</kbd>: Mediante esta función en la zsh limpiamos el target de la polybar  
- <kbd>mkt</kbd>: Se crea una carpeta y dentro de ella varios directorios de trabajo  
- <kbd>clearHistory</kbd>: Limpiar el historial de la zsh  
- <kbd>removeHistory</kbd>: Eliminar el historial de la zsh  
- <kbd>extractPorts</kbd>: Extrae los puertos de un archivo con formato -oG de nmap y los copia en la clipboard  
- <kbd>enableTouchpad</kbd>: Habilitamos el touchpad del portátil  
- <kbd>disableTouchpad</kbd>: Deshabilitamos el touchpad del portátil  

</details>

<br>

<details>
<summary><strong>H E L P</strong></summary>

# Ayuda

En caso de que estes muy perdido en el entorno o te surja alguna duda acude a la  [**Wiki**](https://github.com/theBhacker/Custom-Bspwm/wiki)



<br>
Abrir CHeatsheet con <kbd>Super</kbd> + <kbd>C</kbd>

</details>

<br>

## Créditos

Basado en el entorno profesional de s4vitar

<br><br>

<p align="center"><a href="https://github.com/TheBhacker/Custom-Bspwm?tab=GPL-3.0-1-ov-file#"><img src="https://img.shields.io/static/v1.svg?style=flat-square&label=License&message=GPL-3.0&logoColor=eceff4&logo=github&colorA=061115&colorB=67AFC1"/></a></p>
