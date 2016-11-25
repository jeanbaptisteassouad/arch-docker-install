#!/bin/zsh

rsync --progress -r ./rootfs/ /
loadkeys mac-fr-ext_new

timedatectl set-ntp true



echo -e "n\np\n1\n2048\n\nw\n" |fdisk /dev/sda

mkfs.ext4 /dev/sda1


mount /dev/sda1 /mnt




pacstrap /mnt base
