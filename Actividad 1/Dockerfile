FROM node:18-alpine

WORKDIR /app

COPY index.html .
COPY imagen.jpeg .

RUN npm install -g http-server

EXPOSE 3000

CMD ["http-server", ".", "-p", "3000"]
