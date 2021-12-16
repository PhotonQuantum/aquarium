FROM alpine:latest

WORKDIR /app

COPY blahaj config.yaml ./

RUN chmod +x blahaj

EXPOSE 8080

CMD ["./blahaj", "config.yaml"]