# Imagem do container
FROM node:latest

# Quem criou o container
MAINTAINER Wellington Maia

# Declarar variáveis de ambiente
ENV NODE_ENV=production
ENV PORT=3000
ENV PATH_CONTAINER=/var/www 

# Copiar os arquivos do projeto (.) para a maquina do container '/var/www' 
COPY . $PATH_CONTAINER

# Diretório onde o projeto irá se localizar para realizar as atividades
# incluise executar os comandos
WORKDIR $PATH_CONTAINER

# Quando criar o container executar o comando para instalar
# as dependências do nodejs
RUN npm install

# Comando de entrada, executa assim que finalizar o build
#["npm", "start"] -> modo antigo
ENTRYPOINT ["npm", "start"] 

# Porta onde a aplicação será executada
EXPOSE $PORT