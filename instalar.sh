#ejecturar:
#git clone https://github.com/calegret1/odoo16ent.git
#chmod -R 775 ./odoo16ent/
#cd odoo16ent
#./instalar.sh

sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf
apt-get update
apt-get upgrade -y
apt install postgresql -y
git clone https://github.com/calegret1/odoo16ent.git
cd ./odoo16ent/install/
cat odoo16ent.* > odoo16ent.deb
rm odoo16ent.aa odoo16ent.ab odoo16ent.ac
dpkg -i odoo16ent.deb
apt-get install -f -y
dpkg -i odoo16ent.deb dpkg
sed -i 's/$nrconf{restart} = '"'"'a'"'"';/#$nrconf{restart} = '"'"'i'"'"';/g' /etc/needrestart/needrestart.conf