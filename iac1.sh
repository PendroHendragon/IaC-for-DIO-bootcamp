#!/bin/bash


mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -s /bin/script -p $(opessl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/script -p $(opessl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/script -p $(opessl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/script -p $(opessl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/script -p $(opessl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/script -p $(opessl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/script -p $(opessl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/script -p $(opessl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/script -p $(opessl passwd -crypt Senha123) -G GRP_SEC


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /public

