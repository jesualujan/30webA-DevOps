#Para crear una imagen en este caso usando node
#debemos crear un: Dockerfile, este archivo Dockerfile
# se utiliza para ejecutar una aplicación NodeJS

#Está utilizando la imagen oficial de NodeJS versión 18 como base
FROM node:18

#Establece eñ directorio de trabajo del contenedor como /app
#Todo lo que se copie en la imagen de Dcoker se almacenará en este directorio
WORKDIR /app

# Copia el archivo package.json & package-lock.json a la imagen de Docker
COPY package.json ./

#Instala las dependencias de la aplicación de NODE en el contenedor
#utiliza el archivo package.json copiado previamente para determinar que paquetes
#instalar
RUN npm install

#Coppia todos los archivos y directorios desde el directorio de construcción local (localhost)
#al directorio de trabajo en el contenedor
COPY . ./

#UTILIZAR UNA VARIABLE DE ENTORNO 
EXPOSE 3000

#Establecemos el comando predeterminado a ejecutar cuando
#iniciemos el contenedor o arranquemos el contenedor 
CMD ["node", "index.js"]