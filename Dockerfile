FROM alpine:latest

WORKDIR /app

COPY blahaj config.yaml ./

COPY nmsl-telegram-bot bible.json ./

RUN chmod +x blahaj nmsl-telegram-bot

EXPOSE 8080

CMD ["./blahaj", "config.yaml"]