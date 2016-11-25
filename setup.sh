#!/bin/zsh

# setup rootfs
rsync --progress -r ./rootfs/ /

# set good keymap
loadkeys mac-fr-ext_new

# update time
timedatectl set-ntp true


# create partition
echo -e "n\np\n1\n2048\n\nw\n" |fdisk /dev/sda

mkfs.ext4 -O "^64bit" /dev/sda1

mount /dev/sda1 /mnt

