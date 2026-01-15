FROM alpine:latest

RUN apk add --no-cache wget

WORKDIR /app

COPY download.sh /download.sh
RUN chmod +x /download.sh

CMD ["/download.sh"]
