# Etapa 1: Build da aplicação Vue
FROM node:22 AS build-stage

# Definir diretório de trabalho
WORKDIR /app

# Copiar o package.json e o package-lock.json (caso exista)
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o restante dos arquivos do projeto
COPY . .

# Gerar a versão otimizada da aplicação
RUN npm run build

# Etapa 2: Servir a aplicação com Nginx
FROM nginx:alpine AS production-stage

# Copiar a pasta dist gerada para o Nginx
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Expor a porta 80 (porta padrão do Nginx)
EXPOSE 80

# Comando para rodar o Nginx
CMD ["nginx", "-g", "daemon off;"]
