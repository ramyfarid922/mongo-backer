#! /bin/bash

# Colors configuration
# use them in echo "${RED}Hello World!" to print Hello world in red!
RED=`tput setaf 1`
GREEN=`tput setaf 2`
YELLOW=`tput setaf 6`
NC=`tput sgr0`

read -p "Enter your database host: " DB_HOST
read -p "Enter your database port: " DB_PORT
read -p "Enter your database user: " DB_USER
read -p "Enter your database password: " DB_PASSWORD
read -p "Enter your desired output path (absolute): " BACKUP_OUTPUT

# Script banner
echo "${YELLOW}==============================================================================${NC}"
echo "${YELLOW}*** Database backup starting...${NC}"
echo "${YELLOW}*** Loading...${NC}"
echo "${YELLOW}==============================================================================${NC}"


mongodump --host=${DB_HOST} --port=${DB_PORT} --username=${DB_USER} --password=${DB_PASSWORD} --out="${BACKUP_OUTPUT}"

