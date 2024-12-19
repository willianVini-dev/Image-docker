# Define a imagem base como Node.js versão 18 usando a variante Alpine para reduzir o tamanho da imagem
FROM node:18-alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo package.json para o diretório de trabalho no contêiner
COPY package.json .

# Instala dependências necessárias para construir e rodar algumas bibliotecas nativas
RUN apk add --no-cache python3 g++ make

# Instala as dependências da aplicação em modo de produção
RUN yarn install --production

# Copia todo o restante dos arquivos da aplicação para o diretório de trabalho no contêiner
COPY . .

# Define o comando padrão para iniciar a aplicação
CMD ["node", "src/index.js"]

# Expõe a porta 3000 para que a aplicação possa ser acessada externamente
EXPOSE 3000