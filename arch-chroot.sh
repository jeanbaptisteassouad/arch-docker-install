#!/bin/zsh

arch-chroot /mnt


ln -s /usr/share/zoneinfo/Europe/Paris

hwclock --systohc



sed -i '/#en_US.UTF-8 UTF-8/c\en_US.UTF-8 UTF-8' /etc/locale.gen

locale-gen


echo "KEYMAP=map-fr-ext_new" > /etc/vconsole.conf

echo "arch-docker" > /etc/hostname

echo "127.0.0.1    arch-docker.localdomain    arch-docker" >> /etc/hosts


echo -e "y\n" |pacman -S syslinux

syslinux-install_update -iam


exit

