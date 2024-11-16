sed -i 's/#$nrconf{restart} = '"'"'i'"'"';/$nrconf{restart} = '"'"'a'"'"';/g' /etc/needrestart/needrestart.conf
apt-get update
apt-get upgrade -y
apt install postgresql -y
apt install python3-pip -y
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.jammy_amd64.deb
dpkg -i wkhtmltox_0.12.6.1-2.jammy_amd64.deb
apt --fix-broken install -y
dpkg -i wkhtmltox_0.12.6.1-2.jammy_amd64.deb
rm wkhtmltox_0.12.6.1-2.jammy_amd64.deb
git clone https://github.com/calegret1/odoo16ent.git
cd ./odoo16ent/install/
cat odoo16ent.* > odoo16ent.deb
rm odoo16ent.aa odoo16ent.ab odoo16ent.ac
dpkg -i odoo16ent.deb
apt-get install -f -y
dpkg -i odoo16ent.deb
apt-get update
apt-get upgrade -y
mkdir /usr/lib/python3/dist-packages/odoo/custom_addons
mv ~/odoo16ent/custom_addons/* /usr/lib/python3/dist-packages/odoo/custom_addons
echo "addons_path = /usr/lib/python3/dist-packages/odoo/addons, /usr/lib/python3/dist-packages/odoo/custom_addons" >> /etc/odoo/odoo.conf
service odoo restart
cd ~/..
rm -r ~/odoo16ent
pip install astor
pip install unidecode
pip install schwifty==2024.4.0
pip install babel
pip install decorator
pip install Werkzeug
pip install Psycopg2
pip install pypdf2
pip install XlsxWriter
pip install lxml
sed -i 's/$nrconf{restart} = '"'"'a'"'"';/#$nrconf{restart} = '"'"'i'"'"';/g' /etc/needrestart/needrestart.conf