# Arquitectura del Proyecto

## Descripción
Este proyecto consiste en una aplicación web implementada mediante contenedores Docker, administrada por Kubernetes, y desplegada en Microsoft Azure, AWS o Digital Ocean. La aplicación se compone de un frontend en React, un backend en NestJS y utiliza una base de datos MongoDB para gestionar entidades como Establecimiento, Animal, Usuario, Potrero, Reportes, etc. También se incluyen funcionalidades de CI/CD con GitHub Actions, análisis estático de código con SonarQube, pruebas unitarias con Jest y el uso del paquete registry de GitHub para la gestión de librerías. 

## Componentes
- Frontend: React
- Backend: NestJS
- Base de Datos: MongoDB
- Entidades: Establecimiento, Animal, Usuario, Potrero, Reportes, etc.

## Kubernetes
La aplicación será administrada por Kubernetes para garantizar la escalabilidad y la disponibilidad.

## CI/CD
Se implementará CI/CD utilizando GitHub Actions para automatizar el proceso de construcción, pruebas y despliegue.

## Análisis Estático de Código
Se utilizará SonarQube para realizar análisis estático de código y asegurar la calidad del mismo.

## Pruebas Unitarias
Las pruebas unitarias serán realizadas con Jest para asegurar el funcionamiento correcto de los componentes.

## Gestión de Módulos
La aplicación incluirá módulos de gestión de animales, reportes, compra-venta de animales, ABM de usuarios, etc.

## Package Registry
GitHub Package Registry será utilizado para gestionar las librerías y paquetes utilizados en el proyecto.

## Plataformas de Despliegue
El proyecto se desplegará en una de las siguientes plataformas de nube:
- Microsoft Azure
- AWS
- Digital Ocean

## Instrucciones de Ejecución
1. Clonar el repositorio desde GitHub.
2. Navegar a la carpeta del proyecto.
3. Configurar las variables de entorno necesarias para la conexión a la base de datos y otras configuraciones.
4. Construir y desplegar los contenedores Docker utilizando Kubernetes.
5. Acceder a la aplicación desde la URL proporcionada por la plataforma de despliegue.

## Configuración
A continuación, se detallan las configuraciones necesarias:

### Variables de Entorno
- `DB_CONNECTION_STRING`: Cadena de conexión a la base de datos MongoDB.
- `API_KEY`: Clave de API para acceder a servicios externos (si es necesario).

## Contribución
Si deseas contribuir al proyecto, sigue los siguientes pasos:
1. Haz un fork del repositorio.
2. Crea una rama para tu contribución.
3. Realiza los cambios y las mejoras necesarias.
4. Envía un pull request al repositorio principal.