# PRODUÇÃO
# Primeiro Estágio => BUILDER
# Node slim é uma versão bem completa de container node
FROM node:16-slim as BUILDER
LABEL maintainer="Gabriel Gregório"

# Pasta que vamos trabalhar no container
WORKDIR /usr/src/app

# Copia os arquivos de package.json
COPY package*.json ./

# Instala as dependências
# Se rolar um erro aqui, o docker para
# SE passar e os package não mudarem, ele usa o cash
RUN npm install

# Copia todo o código, já que pode mudar
COPY src ./src

# Segundo estágio
# Node alphine, uma versão de container node bem compacta
FROM node:16-alpine

ARG NODE_ENV

WORKDIR /usr/src/app

# Copia do estágio Builder para a pasta atual
COPY --from=BUILDER /usr/src/app ./

# Expor a porta 3000
EXPOSE 3000

CMD ["npm", "start"]

# Funcionamento
# Caso o builder se mantenha sem alterações
# Nos packages, então a etapa builder ficará cashada