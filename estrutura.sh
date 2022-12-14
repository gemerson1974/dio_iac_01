#!/bin/bash



cd ~  # indo para pasta default
mkdir -p publico adm ven sec  # criação das pastas


# criação dos grupos

groupadd GRP_ADM 

groupadd GRP_VEN

groupadd GRP_SEC

# criação somente das contas de usuarios

useradd carlos  -c "usuario da administracao" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd maria   -c "usuario da administracao" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd joao    -c "usuario da administracao" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd debora  -c "usuario de vendas" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd sebastiana  -c "usuario de vendas" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd roberto  -c "usuario de vendas" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd josefina  -c "usuario da secretaria" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd amanda  -c "usuario da secretaria" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

useradd rogerio  -c "usuario da secretaria" -m -s /bin/bash -p $(openssl passwd -crypt Senha123)


# inclusao das constas de usuarios aos seus grupos

gpasswd --members carlos,maria,joao GRP_ADM

gpasswd --members debora,sebastiana,roberto GRP_VEN

gpasswd --members josefina,amanda,rogerio GRP_SEC



# acesso da pasta publico para todos
chmod 777 ~/publico

# ajustes de permissões das pastas conforme seu grupo
chown -R .GRP_ADM /root/adm && chmod 770 ~/adm

chown -R .GRP_VEN /root/ven && chmod 770 ~/ven
 
chown -R .GRP_SEC /root/sec && chmod 770 ~/sec





