#!/usr/bin/bash

# Adaptado para Fedora con Fastfetch y sobreescritura forzada

# Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

# Global variables
dir=$(pwd)
fdir="$HOME/.local/share/fonts"
user=$(whoami)

trap ctrl_c INT

function ctrl_c(){
	echo -e "\n\n${redColour}[!] Saliendo...\n${endColour}"
	exit 1
}


function banner() {
    echo -e "\n${turquoiseColour}   █████    █████               ███████████  █████                         █████                         "
    sleep 0.05
    echo -e "   ░░███    ░░███               ░░███░░░░░███░░███                         ░░███                          "
    sleep 0.05
    echo -e "   ███████   ░███████    ██████  ░███    ░███ ░███████    ██████    ██████  ░███ █████  ██████  ████████ "
    sleep 0.05
    echo -e "  ░░░███░    ░███░░███  ███░░███ ░██████████  ░███░░███  ░░░░░███  ███░░███ ░███░░███  ███░░███░░███░░███"
    sleep 0.05
    echo -e "    ░███     ░███ ░███ ░███████  ░███░░░░░███ ░███ ░███   ███████ ░███ ░░░  ░██████░  ░███████  ░███ ░░░ "
    sleep 0.05
    echo -e "    ░███ ███ ░███ ░███ ░███░░░   ░███    ░███ ░███ ░███  ███░░███ ░███  ███ ░███░░███ ░███░░░   ░███     "
    sleep 0.05
    echo -e "    ░░█████  ████ █████░░██████  ███████████  ████ █████░░████████░░██████  ████ █████░░██████  █████    "
    sleep 0.05
    echo -e "     ░░░░░  ░░░░ ░░░░░  ░░░░░░  ░░░░░░░░░░░  ░░░░ ░░░░░  ░░░░░░░░  ░░░░░░  ░░░░ ░░░░░  ░░░░░░  ░░░░░     "
    sleep 0.05
    echo -e "                                                                                                        ${endColour}${yellowColour}(${endColour}${grayColour}Creado por ${endColour}${purpleColour}theBhacker/n3tshad0w${endColour}${yellowColour})${endColour}${turquoiseColour}" 
}


if [ "$user" == "root" ]; then
	banner
	echo -e "\n\n${redColour}[!] No deberías iniciar este script como usuario root!\n${endColour}"
    	exit 1
else
	banner
	sleep 1
	echo -e "\n\n${blueColour}[*] Instalando paquetes necesarios para el entorno...\n${endColour}"
	sleep 2
	sudo dnf install -y kitty rofi feh xclip ranger i3lock scrot scrub wmname ImageMagick cmatrix htop fastfetch python3-pip procps-ng fzf lsd bat pamixer flameshot pipx zsh curl
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo instalando algunos paquetes!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi
 
	echo -e "\n${blueColour}[*] Iniciando instalación de dependencias necesarias para el entorno...\n${endColour}"
	sleep 0.5

	echo -e "\n${purpleColour}[*] Instalando dependencias necesarias para el bspwm...\n${endColour}"
	sleep 2
	sudo dnf install -y gcc make gcc-c++ git vim libxcb-devel xcb-util-devel xcb-util-wm-devel xcb-util-keysyms-devel alsa-lib-devel libuv-devel
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo instalando algunas dependencias para el bspwm!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi

	echo -e "\n${purpleColour}[*] Instalando dependencias necesarias para la polybar...\n${endColour}"
	sleep 2
	sudo dnf install -y cmake cmake-data pkgconf-pkg-config python3-sphinx cairo-devel libxcb-devel xcb-util-devel xcb-proto xcb-util-image-devel xcb-util-wm-devel xcb-util-xrm-devel xcb-util-cursor-devel alsa-lib-devel pulseaudio-libs-devel jsoncpp-devel libmpdclient-devel libcurl-devel libnl3-devel
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo instalando algunas dependencias para la polybar!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi

	echo -e "\n${purpleColour}[*] Instalando dependencias necesarias para picom...\n${endColour}"
	sleep 2
	sudo dnf install -y meson ninja-build libXext-devel libxcb-devel xcb-util-renderutil-devel xcb-util-image-devel pixman-devel dbus-devel libconfig-devel mesa-libGL-devel pcre2-devel pcre-devel libevdev-devel uthash-devel libev-devel libX11-devel
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo instalando algunas dependencias para picom!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi

	echo -e "\n${blueColour}[*] Iniciando instalación de las tools...\n${endColour}"
	sleep 0.5
	rm -rf ~/tools
	mkdir -p ~/tools && cd ~/tools

	# Compilación de i3lock-fancy y tty-clock
	git clone https://github.com/meskarune/i3lock-fancy.git && cd i3lock-fancy && sudo make install && cd ..
	git clone https://github.com/xorg62/tty-clock.git && cd tty-clock && sudo dnf install -y ncurses-devel && make && sudo make install && cd ..

	echo -e "\n${purpleColour}[*] Instalando bspwm...\n${endColour}"
	sleep 2
	git clone https://github.com/baskerville/bspwm.git
	cd bspwm
	make -j$(nproc)
	sudo make install
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo instalando bspwm!\n${endColour}"
		exit 1
	else
		sudo dnf install -y bspwm
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi
	cd ..

	echo -e "\n${purpleColour}[*] Instalando sxhkd...\n${endColour}"
	sleep 2
	git clone https://github.com/baskerville/sxhkd.git
	cd sxhkd
	make -j$(nproc)
	sudo make install
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo instalando sxhkd!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi

	cd ..

	echo -e "\n${purpleColour}[*] Instalando polybar...\n${endColour}"
	sleep 2
	git clone --recursive https://github.com/polybar/polybar
	cd polybar
	mkdir build
	cd build
	cmake ..
	make -j$(nproc)
	sudo make install
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo instalando polybar!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi

	cd ../../

	echo -e "\n${purpleColour}[*] Instalando picom...\n${endColour}"
	sleep 2
	git clone https://github.com/ibhagwan/picom.git
	cd picom
	git submodule update --init --recursive
	meson --buildtype=release . build
	ninja -C build
	sudo ninja -C build install
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo en la instalación de picom!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi

	cd ..

	echo -e "\n${purpleColour}[*] Instalando Oh My Zsh y Powerlevel10k para el usuario $user...\n${endColour}"
	sleep 2
 	pipx install pywal --force
	
	# Asegurar que Oh My Zsh y Powerlevel10k se sobreescriban sin fallar
	rm -rf "$HOME/.oh-my-zsh"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
	
	rm -rf "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo en la instalación de Oh My Zsh y Powerlevel10k para el usuario $user!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi

	echo -e "\n${purpleColour}[*] Instalando Oh My Zsh y Powerlevel10k para el usuario root...\n${endColour}"
	sleep 2
	sudo rm -rf /root/.oh-my-zsh
	sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
	
	sudo rm -rf /root/.oh-my-zsh/custom/themes/powerlevel10k
	sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /root/.oh-my-zsh/custom/themes/powerlevel10k
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Failed to install Oh My Zsh and Powerlevel10k for user root!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi

	echo -e "\n${blueColour}[*] Iniciando configuración de las fuentes, wallpaper, archivos de configuración, .zshrc, .p10k.zsh, y scripts...\n${endColour}"
	sleep 0.5

	echo -e "\n${purpleColour}[*] Configurando las fuentes...\n${endColour}"
	sleep 2
	mkdir -p "$fdir"
	cp -rfv $dir/fonts/* "$fdir"
	echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
	sleep 1.5

	echo -e "\n${purpleColour}[*] Configurando el Wallpaper...\n${endColour}"
	sleep 2
	mkdir -p "$HOME/Wallpapers"
	cp -rfv $dir/wallpapers/* "$HOME/Wallpapers"
	echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
	sleep 1.5

	echo -e "\n${purpleColour}[*] Configurando archivos de configuración...\n${endColour}"
	sleep 2
	mkdir -p ~/.config/
	cp -rfv $dir/config/* ~/.config/
	echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
	sleep 1.5

	echo -e "\n${purpleColour}[*] Configurando el .zshrc, .p10k.zsh y rofi files...\n${endColour}"
	sleep 2
	# Sobreescritura forzada de archivos zsh y p10k
	cp -fv "$dir/.zshrc" ~/.zshrc
	sudo ln -sfv ~/.zshrc /root/.zshrc
	cp -fv "$dir/.p10k.zsh" ~/.p10k.zsh
	sudo ln -sfv ~/.p10k.zsh /root/.p10k.zsh
	
	mkdir -p ~/.local/share/rofi/themes/
	cp -rf "$dir/config/rofi/themes/"* ~/.local/share/rofi/themes/
	
	sudo mkdir -p /root/.config
	if [[ -d "$HOME/.config/fastfetch" ]]; then
		sudo ln -sfv ~/.config/fastfetch /root/.config/fastfetch
	fi
	echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
	sleep 1.5

	echo -e "\n${purpleColour}[*] Configurando permisos necesarios y links simbólicos...\n${endColour}"
	sleep 2
	chmod -R +x ~/.config/bspwm/
	chmod +x ~/.config/polybar/launch.sh
	sudo chmod +x /usr/local/share/zsh/site-functions/_bspc
	sudo chown root:root /usr/local/share/zsh/site-functions/_bspc
	cd ..
	echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
	sleep 1.5
	
	echo -e "\n${purpleColour}[*] Borrando repositorio y el directorio tools...\n${endColour}"
	sleep 2
	rm -rfv ~/tools
	rm -rfv $dir
	echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
	sleep 1.5
	
	echo -e "\n${greenColour}[+] Entorno Configurado :))\n${endColour}"
	sleep 1.5

	while true; do
		echo -en "\n${yellowColour}[?] Es necesario reiniciar el sitema. Quieres reiniciar el sistema ahora? ([y]/n) ${endColour}"
		read -r
		REPLY=${REPLY:-"y"}
		if [[ $REPLY =~ ^[Yy]$ ]]; then
			echo -e "\n\n${greenColour}[+] Reiniciando el sistema...\n${endColour}"
			sleep 1
			sudo reboot
		elif [[ $REPLY =~ ^[Nn]$ ]]; then
			exit 0
		else
			echo -e "\n${redColour}[!] Respuesta inválida, pruebe otra vez.\n${endColour}"
		fi
	done
fi
