#ejecturar:
#git clone https://github.com/calegret1/odoo16ent.git
#cd /odoo16ent
#./instalar.sh

apt-get update
apt-get upgrade
sudo apt install postgresql -y
git clone https://github.com/calegret1/odoo16ent.git
cd ./odoo16ent/install/
cat odoo16ent.* > odoo16ent.deb
rm odoo16ent.aa odoo16ent.ab odoo16ent.ac
dpkg -i odoo16ent.deb
apt-get install -f -y
dpkg -i odoo16ent.deb
