#!/bin/bash

# Nombre de la imagen y el contenedor
IMAGE_NAME="prueba-devops-app"
CONTAINER_NAME="prueba-devops"
VOLUME_NAME="prueba-devops-vol"

# Crear el volumen si no existe
docker volume create $VOLUME_NAME

# Construir la imagen
echo "Construyendo la imagen Docker..."
docker build -t $IMAGE_NAME .

# Detener y eliminar el contenedor si ya está corriendo
docker stop $CONTAINER_NAME 2>/dev/null && docker rm $CONTAINER_NAME 2>/dev/null

# Ejecutar el contenedor
echo "Iniciando el contenedor..."
docker run -d -p 5000:5000 --name $CONTAINER_NAME -v $VOLUME_NAME:/app/logs $IMAGE_NAME

# Mostrar logs del contenedor
echo "Mostrando logs..."
docker logs -f $CONTAINER_NAME
