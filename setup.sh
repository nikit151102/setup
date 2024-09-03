#!/bin/bash

# Клонируем репозиторий бэкенда
git clone https://github.com/alekseytumbaev/ucomand-backend.git

# Переходим в директорию бэкенда
cd ucomand-backend

# Удаляем файл docker-compose.yaml, если он существует
rm -f docker-compose.yaml

# Клонируем репозиторий фронтенда
git clone https://github.com/nikit151102/Frontend-ucomand.git

# Перемещаем docker-compose.yaml из фронтенд-репозитория в текущую директорию
mv Frontend-ucomand/docker-compose.yaml .

# Запускаем Docker Compose
docker-compose up
