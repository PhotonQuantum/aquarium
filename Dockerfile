FROM alpine:latest

WORKDIR /app

COPY blahaj config.yaml ./

COPY nmsl-telegram-bot bible.json ./

COPY hithit_bot chi-tg-inline-rs ./

RUN chmod +x blahaj nmsl-telegram-bot hithit_bot chi-tg-inline-rs

EXPOSE 8080

CMD ["./blahaj", "config.yaml"]