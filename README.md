# Arquitectura del Proyecto

## Descripción
Este proyecto consiste en una aplicación web implementada mediante contenedores Docker, administrada por Kubernetes, y desplegada en Microsoft Azure, AWS o Digital Ocean. La aplicación se compone de un frontend en React, un backend en NestJS y utiliza una base de datos MongoDB para gestionar entidades como Establecimiento, Animal, Usuario, Potrero, Reportes, etc. También se incluyen funcionalidades de CI/CD con GitHub Actions, análisis estático de código con SonarQube, pruebas unitarias con Jest y el uso del paquete registry de GitHub para la gestión de librerías. 

## Componentes
- Frontend: React
- Backend: NestJS
- Base de Datos: MongoDB
- Entidades: Establecimiento, Animal, Usuario, Potrero, Reportes, etc.

## Kubernetes
La aplicación será administrada por Kubernetes para garantizar la escalabilidad y la disponibilidad. Se utilizará un cluster de Kubernetes para el despliegue de la aplicación.

## CI/CD
Se implementará CI/CD utilizando GitHub Actions para automatizar el proceso de construcción, pruebas y despliegue. Se utilizarán los siguientes workflows:

- `build`: Construye la aplicación y los contenedores Docker.
- `test`: Ejecuta las pruebas unitarias.
- `scan`: Realiza análisis estático de código.
- `deploy`: Despliega la aplicación en el cluster de Kubernetes.


## Análisis Estático de Código
Se utilizará SonarQube para realizar análisis estático de código y asegurar la calidad del mismo. Se deberá decidir si se utiliza SonarCloud o se despliega una instancia de SonarQube en el cluster de Kubernetes.

## Pruebas Unitarias
Las pruebas unitarias serán realizadas con Jest para asegurar el funcionamiento correcto de los componentes. En cuanto al coverage, lo ideal sería alcanzar un 80% de cobertura.

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
