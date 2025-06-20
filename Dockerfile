FROM node:18-slim

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 5678

ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0

CMD ["npx", "n8n"]
