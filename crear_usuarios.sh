#!/bin/bash

FICHERO="usuarios.txt"
PASSWORD="Bienvenido2026"

# Comprobar si el archivo existe
if [ ! -f $FICHERO ]; then
    echo "Error: No encuentro el archivo $FICHERO"
    exit 1
fi

while read -r NOMBRE_REAL; do
    echo "--- Procesando a: $NOMBRE_REAL ---"

    # 1. Creamos el usuario con su carpeta de inicio (-m)
    sudo useradd -m "$NOMBRE_REAL"

    # 2. Le asignamos la contraseña automáticamente
    # Explicación: mandamos "usuario:contraseña" al comando chpasswd
    echo "$NOMBRE_REAL:$PASSWORD" | sudo chpasswd

    # 3. (Opcional) Forzamos a que cambie la contraseña al entrar por primera vez
    # Esto es muy de SysAdmin profesional
    sudo chage -d 0 "$NOMBRE_REAL"

    echo "Usuario $NOMBRE_REAL configurado con éxito."
done < "$FICHERO"

echo "¡Todos los usuarios han sido creados con la clave: $PASSWORD!"
