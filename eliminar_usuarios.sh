#!/bin/bash

FICHERO="usuarios.txt"

while read -r USUARIO; do
    echo "Borrando al usuario y su carpeta personal: $USUARIO"

    # El flag -r es la clave: borra el usuario Y su /home
    sudo userdel -r "$USUARIO" 2>/dev/null

    echo "Eliminado con éxito."
done < "$FICHERO"

echo "--- Servidor limpio ---"
