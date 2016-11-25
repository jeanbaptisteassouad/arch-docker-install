# arch-docker-install
change keys mapping
```shell
loadkeys fr
```

sync pacman database
```shell
pacman -Sy
```

change size of cowspace
```shell
mount -o remount,size=2G /run/archiso/cowspace
```

install git
```shell
pacman -S git
```

clone git
```shell
git clone https://github.com/jeanbaptisteassouad/arch-docker-install.git
```
