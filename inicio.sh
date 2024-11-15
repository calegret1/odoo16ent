echo "sudo passwd"
echo "sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config"
echo "service ssh reload"
