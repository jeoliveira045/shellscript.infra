#!/bin/bash

echo Excluindo Configuração anterior...

userdel -rf carlos
userdel -rf maria
userdel -rf joao
userdel -rf debora
userdel -rf sebastiana
userdel -rf roberto
userdel -rf josefina
userdel -rf amanda
userdel -rf rogerio

rm -r publico
rm -r adm
rm -r ven
rm -r sec

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC



echo Criando pastas...

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo Criando grupos...

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo Criando Usuarios...

useradd carlos -c "Administracao" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd maria -c "Administracao" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd joao -c "Administracao" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

useradd debora -c "Vendas" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd sebastiana -c "Vendas" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd roberto -c "Vendas" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd josefina -c "Seguranca" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd amanda -c "Seguranca" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd rogerio -c "Seguranca" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

echo Configurando os diretórios de trabalho

chown root /publico
chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven 
chown root:GRP_SEC /sec 

echo Configurando os diretórios dos usúarios e suas permissões 

chown root /home/carlos
chown root /home/maria
chown root /home/joao

chown root /home/debora
chown root /home/sebastiana
chown root /home/roberto

chown root /home/josefina
chown root /home/amanda
chown root /home/rogerio

chmod +777 /publico
chmod +770 /adm 
chmod -007 /adm
chmod +770 /ven 
chmod -007 /ven
chmod +770 /sec 
chmod -007 /sec

chmod +070 /home/carlos 
chmod -707 /home/carlos
chmod +070 /home/maria 
chmod -707 /home/maria
chmod +070 /home/joao 
chmod -707 /home/joao
chmod +070 /home/debora 
chmod -707 /home/debora
chmod +070 /home/sebastiana 
chmod -707 /home/sebastiana
chmod +070 /home/roberto 
chmod -707 /home/roberto
chmod +070 /home/josefina 
chmod -707 /home/josefina
chmod +070 /home/amanda 
chmod -707 /home/amanda
chmod +070 /home/rogerio 
chmod -707 /home/rogerio
