FROM alpine:latest

WORKDIR /app

COPY blahaj config.yaml ./

EXPOSE 8080

RUN ["./blahaj", "config.yaml"]