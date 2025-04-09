# CLONAGEM E CONFIGURAÇÃO DE UM SERVIDOR WEB APACHE

## Desafio proposto pela [Digital Innovation One](https://www.dio.me)

## SOBRE O PROJETO

### O objetivo deste projeto é realizar a instalação e configuração de um servidor web Apache na minha máquina virtual Ubuntu na AWS, utilizando versionamento com Git para clonar e configurar o servidor Apache hospedado no GitHub. O processo envolve o uso de um script em Shell para facilitar a instalação de pacotes como unzip e o próprio apache2, bem como a descompactação de arquivos do servidor web vindo do repositório GitHub.

## Ferramentas Utilizadas:
![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white) ![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat&logo=linux&logoColor=black) ![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=flat&logo=ubuntu&logoColor=white) ![Shell](https://img.shields.io/badge/Shell_Script-121011?style=flat&logo=gnu-bash&logoColor=white) ![AWS](https://img.shields.io/badge/Amazon_AWS-232F3E?style=flat&logo=amazon-web-services&logoColor=whit) ![Apache](https://img.shields.io/badge/Apache-D22128?flat&logo=Apache&logoColor=white) ![GIT](https://img.shields.io/badge/GIT-E44C30?flyte&logo=git&logoColor=white)  

## Passos para Clonagem:

### Clonagem do projeto:
```sh
git clone https://github.com/Duda-Dz/Servidor-Web-Apache-DIO.git

```
## Para Adicionar Para Execução:
```sh
chmod +x script-apache.sh

```
### Para Executar:
```sh
./script-apache.sh

```

## Passo a Passo da Codificação:

### Criar um arquivo no editor Nano ou Vi:
```sh
nano script-apache.sh

```
ou 
```sh
sudo nano script-apache.sh

```
### Adicionar dentro do arquivo: 

```sh
#!/bin/bash

echo "iniciando atualização do servidor..."

apt-get update
apt-get upgrade -y

echo "finalizando a atualização..."

echo "instalando apache e unzip..."

apt-get install apache2 -y
apt-get install unzip -y

echo "download e copia dos arquivos da aplicação ..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo "finalizando aplicação..."

```
### OBS: Todo Script Deve Ter:
```sh
#!/bin/bash

```
## Para Adicionar Para Execução:
```sh
chmod +x script-apache.sh

```
## Para executar:
```sh
./script-apache.sh

```

