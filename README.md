# 🐧 Linux User Automation Suite

![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/Platform-Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![DevOps](https://img.shields.io/badge/Focus-DevOps%20Junior-blue?style=for-the-badge)

## Descripción del Proyecto

Al trabajar con sistemas, a veces es necesario crear muchas cuentas de usuario en el sistema. Y cuando ya no hacen falta, eliminarlas. Por eso, he creado dos scripts que pueden ahorrar tiempo que un SysAdmin pueda invertir en tareas más importantes.

### Contenido del repositorio:
* `crear_usuarios.sh`: Script para la creación masiva con configuración de seguridad.
* `eliminar_usuarios.sh`: Script para la limpieza total de cuentas y directorios personales.
* `usuarios.txt`: Archivo de datos con el listado de nombres.

---

## Características Principales

### Script de Creación (`crear_usuarios.sh`)
**Gestión Automatizada:** Crea usuarios y sus respectivos directorios `/home`. Asigna una contraseña con su mismo nombre y la encripta usando el algoritmo SHA-512. Es capaz de procesar listas extensas en cuestión de segundos.

### Script de Eliminación (`eliminar_usuarios.sh`)
**Limpieza Profunda:** Elimina la cuenta y borra de forma recursiva la carpeta personal (`userdel -r`).

---

## Guía de Uso

### 1. Preparación del entorno
Será necesario instalar whois para poder emplear el comando `mkpasswd`. También será importante dar permisos a los archivos para que los scripts se ejecuten sin problemas:

```bash
# Instalación de whois
sudo apt update
sudo apt install whois -y

# Dar permisos de ejecución
chmod +x crear_usuarios.sh eliminar_usuarios.sh
```
### 2. Configuración del entorno
Edita el archivo `usuarios.txt`. Añade un nombre por línea, serán los nombres de los usuarios creados. Recuerda que este archivo debe estar en la misma carpeta que los scripts.

### 3. Ejecución
El uso de `sudo` es obligatorio para ejecutar los scripts.

```bash
sudo ./crear_usuarios.sh
```

```bash
sudo ./eliminar_usuarios.sh
```

De esta manera los scripts serán ejecutados de forma satisfactoria.

---
**Autor:** Álvaro García Alcázar - Estudiante de 1º ASIR
