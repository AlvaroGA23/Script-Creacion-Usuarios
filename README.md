# 🐧 Linux User Automation Suite

![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/Platform-Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![DevOps](https://img.shields.io/badge/Focus-DevOps%20Junior-blue?style=for-the-badge)

## Descripción del Proyecto

Este repositorio contiene una solución para el despliegue y desmantelamiento de cuentas de usuario de forma masiva. Es ideal para entornos de prueba o laboratorios, donde se requiere gestionar múltiples identidades simultáneamente.

### Contenido del repositorio:
* `crear_usuarios.sh`: Script para la creación masiva con configuración de seguridad.
* `eliminar_usuarios.sh`: Script para la limpieza total de cuentas y directorios personales.
* `usuarios.txt`: Archivo de datos con el listado de nombres.

---

## Características Principales

### Script de Creación (`crear_usuarios.sh`)
**Gestión Automatizada:** Crea usuarios y sus respectivos directorios `/home`. Asigna una contraseña temporal y fuerza al usuario a cambiarla en su primer inicio de sesión. Es capaz de procesar listas extensas en cuestión de segundos.

### Script de Eliminación (`eliminar_usuarios.sh`)
**Limpieza Profunda:** Elimina la cuenta y borra de forma recursiva la carpeta personal (`userdel -r`). Además, implementa redirección de errores (`2>/dev/null`) para una ejecución limpia.

---

## Guía de Uso

### 1. Preparación del entorno
Asegúrate de que los archivos tienen el formato de fin de línea correcto para Linux (LF) y concede permisos de ejecución:

```bash
# Limpiar formatos de Windows (si es necesario)
sudo apt install dos2unix -y
dos2unix *.sh *.txt

# Dar permisos de ejecución
chmod +x crear_usuarios.sh eliminar_usuarios.sh
```
### 2. Configuración del entorno
Edita el archivo `usuarios.txt`. Añade un nombre por línea, serán los nombres de los usuarios creados.

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
