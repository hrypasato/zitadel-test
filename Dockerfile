FROM ghcr.io/zitadel/zitadel:latest

# Instalar gettext para envsubst
RUN apk add --no-cache gettext

COPY entrypoint.sh /entrypoint.sh
COPY config.yaml /etc/zitadel/config.yaml

# Hacer ejecutable
RUN chmod +x /entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
#CMD ["start", "--config", "/etc/zitadel/config.yaml", "--masterkeyFromEnv"]
