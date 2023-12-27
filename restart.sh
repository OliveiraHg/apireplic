#!bin/bash
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
while :
do

echo "${GREEN}[INFO] - ${YELLOW}Iniciando o processo de atualização!"
git add .
clear

echo "~> ${GREEN}[INFO] - ${YELLOW}Atualizando a database no HEROKU!"
git commit -am "api-sabrina"
clear

echo "~> ${GREEN}[INFO] - ${YELLOW}Carregando/Atualizando a API no HEROKU!"
git push heroku master
clear

echo "~> ${GREEN}[INFO] - ${YELLOW}Ligando a API, iniciando o logs!"
heroku logs --tail

sleep 1      
done

