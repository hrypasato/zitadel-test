FROM ghcr.io/zitadel/zitadel:latest

COPY config.yaml /etc/zitadel/config.yaml

EXPOSE 8080

CMD ["start", "--config", "/etc/zitadel/config.yaml", "--masterkeyFromEnv"]
