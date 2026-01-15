#!/bin/sh

# Crear el directorio si no existe
mkdir -p /app

# Bucle infinito
while true
do
  echo "Descargando imagen desde Picsum..."
  
  # Descargar imagen y sobrescribirla
  wget -q -O /app/imagen.jpeg https://picsum.photos/1200
  
  echo "Imagen actualizada en /app/imagen.jpeg"
  
  # Esperar 10 segundos
  sleep 10
done
