#!/bin/bash

# Проверка доступности порта 80
nc -z localhost 80
if [ $? -ne 0 ]; then
    exit 1
fi

# Проверка наличия файла index.html
if [ ! -f /var/www/html/index.html ]; then
    exit 1
fi

exit 0
