#!/usr/bin/bash

# Script de theBhacker

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
    echo -e "                                                                                                        ${endColour}${yellowColour}(${endColour}${grayColour}Creado por ${endColour}${purpleColour}theBhacker/n3tphant0m${endColour}${yellowColour})${endColour}${turquoiseColour}" 
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
	sudo apt install -y kitty rofi feh xclip ranger i3lock-fancy scrot scrub wmname imagemagick cmatrix htop neofetch python3-pip procps tty-clock fzf lsd bat pamixer flameshot pipx neofetch
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
	sudo apt install -y build-essential git vim libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev libuv1-dev
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo instalando algunas dependencias para el bspwm!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi

	echo -e "\n${purpleColour}[*] Instalando dependencias necesarias para la polybar...\n${endColour}"
	sleep 2
	sudo apt install -y cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo instalando algunas dependencias para la polybar!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi

	echo -e "\n${purpleColour}[*] Instalando dependencias necesarias para picom...\n${endColour}"
	sleep 2
	sudo apt install -y meson libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev libxcb-glx0-dev
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo instalando algunas dependencias para picom!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi

	echo -e "\n${blueColour}[*] Iniciando instalación de las tools...\n${endColour}"
	sleep 0.5
	mkdir ~/tools && cd ~/tools

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
		sudo apt install bspwm -y
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
		echo -e "\n${greenColour}[+] Done\n${endColour}"
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
 	pipx install pywal
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
	if [ $? != 0 ] && [ $? != 130 ]; then
		echo -e "\n${redColour}[-] Fallo en la instalación de Oh My Zsh y Powerlevel10k para el usuario $user!\n${endColour}"
		exit 1
	else
		echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
		sleep 1.5
	fi

	echo -e "\n${purpleColour}[*] Instalando Oh My Zsh y Powerlevel10k para el usuario root...\n${endColour}"
	sleep 2
	sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
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
	if [[ -d "$fdir" ]]; then
		cp -rv $dir/fonts/* $fdir
	else
		mkdir -p $fdir
		cp -rv $dir/fonts/* $fdir
	fi
	echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
	sleep 1.5

	echo -e "\n${purpleColour}[*] Configurando el Wallpaper...\n${endColour}"
	sleep 2
	if [[ -d "~/Wallpapers" ]]; then
		cp -rv $dir/wallpapers/* ~/Wallpapers
	else
		mkdir ~/Wallpapers
		cp -rv $dir/wallpapers/* ~/Wallpapers
	fi
	wal -nqi ~/Wallpapers/lofi-linux.png
	sudo wal -nqi ~/Wallpapers/lofi-linux.png
	echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
	sleep 1.5

	echo -e "\n${purpleColour}[*] Configurando archivos de configuración...\n${endColour}"
	sleep 2
	cp -rv $dir/config/* ~/.config/
	echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
	sleep 1.5

	echo -e "\n${purpleColour}[*] Configurando el .zshrc, .p10k.zsh y rofi files...\n${endColour}"
	sleep 2
	cp -v $dir/.zshrc ~/.zshrc
	sudo ln -sfv ~/.zshrc /root/.zshrc
	cp -v $dir/.p10k.zsh ~/.p10k.zsh
	sudo ln -sfv ~/.p10k.zsh /root/.p10k.zsh
	mkdir -p ~/.local/share/rofi/themes/
	cp -r $dir/config/rofi/themes/* ~/.local/share/rofi/themes
	echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
	sleep 1.5

	echo -e "\n${purpleColour}[*] Configurando scripts...\n${endColour}"
	sleep 2
	sudo cp -v $dir/scripts/whichSystem.py /usr/local/bin/
	echo -e "\n${greenColour}[+] Finalizado\n${endColour}"
	sleep 1.5

	echo -e "\n${purpleColour}[*] Configurando permisos necesarios y links simbólicos...\n${endColour}"
	sleep 2
	chmod -R +x ~/.config/bspwm/
	chmod +x ~/.config/polybar/launch.sh
	sudo chmod +x /usr/local/bin/whichSystem.py
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
			echo -e "\n\n${greenColour}[+] Reiniciando el sitsema...\n${endColor}"
			sleep 1
			sudo reboot
		elif [[ $REPLY =~ ^[Nn]$ ]]; then
			exit 0
		else
			echo -e "\n${redColour}[!] Respuesta inválida, pruebe otra vez.\n${endColour}"
		fi
	done
fi
