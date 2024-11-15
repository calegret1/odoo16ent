echo "Escriba nueva contraseña para el usuario root:"
sudo passwd
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo service ssh reload
read -p "Se va a proceder a reiniciar el servidor. Después, inicie sesión por SSH con el usuario root. Presione [Enter] para continuar..."
sudo reboot
