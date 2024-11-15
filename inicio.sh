echo "Escriba nueva contraseña para el usuario root:
sudo passwd
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
service ssh reload
while true; do
    read -p "¿Instalar QEMU Agent? " yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

read -p "Se va a proceder a reiniciar el servidor. Después, inicie sesión por SSH con el usuario root. Presione [Enter] para continuar..."
reboot
