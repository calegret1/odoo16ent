echo "Escriba nueva contraseña para el usuario 'root':
sudo passwd
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
service ssh reload
