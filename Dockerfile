# Usamos la imagen ligera de Node.js en Alpine como base
FROM node:20-alpine

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiamos los archivos de dependencias
COPY package*.json ./

# Instalamos las dependencias
RUN npm install

# Copiamos el resto de los archivos al directorio de trabajo
COPY . .

# Exponemos el puerto en el que corre la aplicación
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "run", "start:dev"]
