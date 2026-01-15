FROM alpine:latest

RUN apk add --no-cache curl

WORKDIR /app

CMD while true; do \
  curl -L https://picsum.photos/1200 -o /app/imagen.jpeg; \
  sleep 10; \
done
