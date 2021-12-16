FROM alpine:latest

WORKDIR /app

COPY blahaj config.yaml ./

COPY nmsl-telegram-bot bible.json ./

COPY hithit_bot ./

RUN chmod +x blahaj nmsl-telegram-bot hithit_bot

EXPOSE 8080

CMD ["./blahaj", "config.yaml"]