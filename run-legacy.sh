#!/bin/sh
echo ============================================================================
echo                                                                               
echo                                                                               
echo                    Copyright © Eqvaldi-deer/Eqvaldi-records                   
echo                                                                               
echo                                                                               
echo                                   2017-2024                                   
echo                                                                               
echo                               special thanks to:                              
echo                                                                             
echo                          BeanGreen247/Tomáš Mozdřeň                         
echo                                                                             
echo                    Github: https://github.com/BeanGreen247                  
echo                                                                                                                                                          
echo ============================================================================

dialog --msgbox "WARNING - YOU ARE ENTERING LEGACY MODE (UNMAINTAINED Desktop Environments)" 0 0

cmd=(dialog --keep-tite --menu "Select Desktop Environment:" 22 76 16)

options=(1 "LXDE"
         2 "FVWM-3"
	 3 "Skip to Firmware install")

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            apt install openbox lxsession lxde-common lxappearance lxappearance-obconf openbox-lxde-session lxpanel xfce4-notifyd xfce4-power-manager f3 xfce4-power-manager-plugins ristretto pavucontrol tumbler mesa-utils gparted xarchiver usb-modeswitch p7zip zip unzip uuid-runtime mesa-utils-bin gvfs-backends gvfs-common inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl software-properties-gtk system-config-printer transmission-gtk pcmanfm lxterminal mousepad file-roller galculator ghostscript libmtp-runtime light-locker vlc neofetch lightdm-gtk-greeter-settings xorg lightdm synaptic gdebi htop pulseaudio gnome-disk-utility gnome-icon-theme soundconverter network-manager-gnome ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec60 exfalso flac font-manager libjpeg-dev libglx-mesa0 libgl1-mesa-dri xfce4-screenshooter -y
            apt install dbus-x11 build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev openssl miniupnpc libao-dev vainfo vdpauinfo glmark2-* -y
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            	cmd=(dialog --keep-tite --menu "choose OS:" 22 76 16)

		options=(1 "Debian (server)"
 		         2 "Debian for Raspberry Pi (server)"
         		 3 "Raspberry Pi OS (server)"
			 4 "Armbian (Debian server)")

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

		for choice in $choices
		do
		    case $choice in
		        1)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			          echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			          echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
            
		            ;;
		        2)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			          echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			          echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
		            ;;

		        3)
		            bash ./firmware.sh
		            ;;
		        4)
		            bash ./firmware.sh
            		    ;;
            
    			    esac
			done
            ;;
        2)
            apt install fvwm3 xfce4-terminal thunar pulseaudio pasystray light-locker lightdm-gtk-greeter-settings lightdm file-roller f3 network-manager-gnome galculator ghostscript libmtp-runtime vlc neofetch ristretto xorg synaptic gdebi htop gnome-icon-theme usb-modeswitch blueman genisoimage gnome-disk-utility gvfs-fuse mousepad inputattach xserver-xorg-input-all xserver-xorg-input-synaptics xserver-xorg-video-all xserver-xorg-video-qxl xorg software-properties-qt system-config-printer transmission-gtk tumbler mesa-utils gparted xarchiver p7zip zip unzip uuid-runtime mesa-utils-bin gvfs-backends gvfs-common soundconverter ffmpeg build-essential libcurl4-openssl-dev libalut-dev libsdl2-dev libsdl2-mixer-dev libgtk-3-dev libgtk3-perl ffmpeg libavcodec60 exfalso flac font-manager libjpeg-dev xfce4-screenshooter catfish libglx-mesa0 libgl1-mesa-dri thunar-archive-plugin -y
            apt install dbus-x11 build-essential git nasm libgl1-mesa-dev libsdl2-dev flac libflac-dev libvpx-dev libgtk2.0-dev freepats ninja-build qtbase5-dev qtbase5-private-dev qtbase5-dev-tools qttools5-dev openssl miniupnpc libao-dev vainfo vdpauinfo glmark2-* -y
            apt update
            apt upgrade -y
            rm /etc/apt/sources.list.d/vscode.list
            rm /etc/apt/trusted.gpg.d/microsoft.gpg
            apt purge snapd -y
            echo 'Package: snapd' > /etc/apt/preferences.d/nosnap.pref
            echo 'Pin: release a=*' >> /etc/apt/preferences.d/nosnap.pref
            echo 'Pin-Priority: -10' >> /etc/apt/preferences.d/nosnap.pref
            cat /etc/apt/preferences.d/nosnap.pref
            	cmd=(dialog --keep-tite --menu "choose OS:" 22 76 16)

		options=(1 "Debian (server)"
 		         2 "Debian for Raspberry Pi (server)"
         		 3 "Raspberry Pi OS (server)"
			 4 "Armbian (Debian server)")

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

		for choice in $choices
		do
		    case $choice in
		        1)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			          echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			          echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
            
		            ;;
		        2)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			          echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			          echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
		            ;;

		        3)
		            bash ./firmware.sh
		            ;;
		        4)
		            bash ./firmware.sh
            		    ;;
            
    			    esac
			done
            ;;
        3)
            	cmd=(dialog --keep-tite --menu "choose OS:" 22 76 16)

		options=(1 "Debian (server)"
 		         2 "Debian for Raspberry Pi (server)"
         		 3 "Raspberry Pi OS (server)"
			 4 "Armbian (Debian server)")

		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

		for choice in $choices
		do
		    case $choice in
		        1)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			          echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			          echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
            
		            ;;
		        2)
		            rm /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			          echo 'deb-src http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list
			          echo 'deb http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            echo 'deb-src http://security.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list
		            cat /etc/apt/sources.list
		            apt update -y
		            bash ./firmware.sh
		            ;;

		        3)
		            bash ./firmware.sh
		            ;;
		        4)
		            bash ./firmware.sh
            		    ;;
            
    			    esac
			done
            ;;

    esac
done
