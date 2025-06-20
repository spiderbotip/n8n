# Dockerfile para rodar o spiderbotip/n8n via Node.js
FROM node:18-slim

# Diretório de trabalho
WORKDIR /app

# Copia os arquivos do repositório
COPY . .

# Instala dependências
RUN npm install

# Expõe a porta padrão do n8n
EXPOSE 5678

# Define variáveis de ambiente padrão (podem ser sobrescritas no Koyeb)
ENV N8N_PORT=5678 \
    N8N_HOST=0.0.0.0

# Comando para iniciar o n8n
CMD ["npx", "n8n"]
