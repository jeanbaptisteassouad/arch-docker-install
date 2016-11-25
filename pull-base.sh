#!/bin/zsh

# install arch base
pacstrap /mnt base

genfstab -U /mnt >> /mnt/etc/fstab

