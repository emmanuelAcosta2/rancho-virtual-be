FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

USER root

ARG USERNAME=node
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME
 RUN chown -R 1000:1000 .
# [Optional] Set the default user. Omit if you want to keep the default as root.
# Agrega esta línea para crear un directorio de logs en el volumen persistente
# RUN mkdir -p /mnt/ingest-service/logs && chown -R 1000:1000 /mnt/ingest-service
# Copia el archivo package.json y package-lock.json a la imagen
COPY --chown=node:node package*.json ./

# Copia el código fuente de la aplicación a la imagen
COPY --chown=node:node . .

RUN npm install && npm cache clean --force

RUN npm run build

USER node


# Define el comando para ejecutar la aplicación
CMD [ "node","dist/main.js" ]
