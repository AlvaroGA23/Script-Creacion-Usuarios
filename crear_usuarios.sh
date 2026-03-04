#!/bin/bash
# Leemos las líneas del fichero
FICHERO="usuarios.txt"
while read i
do
    # Me quedo con el nombre de la cuenta
    usuario=$(echo $i | cut -d: -f1)
    
    # Me quedo con la contraseña
    contra=$(echo $i | cut -d: -f2)
    
    # Encriptamos la contraseña usando el algoritmo SHA-512
    encriptada=$(mkpasswd -m sha-512 $contra)
    
    # Creamos el usuario con su carpeta home, shell bash y contraseña encriptada
    useradd -m -s /bin/bash -p $encriptada $usuario

echo "Usuario $usuario creado."
done < $FICHERO

echo "--------------------------------------------"
echo "¡Usuarios creados con éxito! :)"
echo "--------------------------------------------"
