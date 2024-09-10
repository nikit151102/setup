#!/bin/bash

# Создаем папку back, если она не существует
mkdir -p back

# Переходим в папку back
cd back

# Клонируем репозиторий ucomand-backend
git clone https://github.com/alekseytumbaev/ucomand-backend.git


# Удаляем все, кроме папки Frontend-ucomand и файла docker-compose.yaml в ../ucomand-backend
find ../ucomand-backend -mindepth 1 ! -regex '.*/Frontend-ucomand\(/.*\)?' ! -name 'docker-compose.yaml' -exec rm -rf {} +

# Перемещаем все файлы и папки из back/ucomand-backend, кроме docker-compose.yaml, в ../ucomand-backend
find ucomand-backend -mindepth 1 ! -name 'docker-compose.yaml' -exec mv {} ../ucomand-backend/ \;

echo "Операция завершена."
