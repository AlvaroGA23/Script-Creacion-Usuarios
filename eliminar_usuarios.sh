#!/bin/bash
# Leemos las líneas del fichero usuarios.txt
FICHERO="usuarios.txt"
while read i
do
    # Extraemos el nombre de la cuenta
    usuario=$(echo $i | cut -d: -f1)

    # Borramos al usuario y su directorio de inicio.
    # El parámetro -r es fundamental para que no queden carpetas "huérfanas" en /home
    userdel -r $usuario

done < $FICHERO

echo "--------------------------------------------"
echo "¡Usuarios eliminados con éxito! :)"
echo "--------------------------------------------"
