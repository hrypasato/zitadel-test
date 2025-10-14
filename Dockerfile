FROM alpine:latest as builder
RUN apk add --no-cache gettext

FROM ghcr.io/zitadel/zitadel:latest

# Copiar envsubst desde alpine
COPY --from=builder /usr/bin/envsubst /usr/bin/envsubst

COPY entrypoint.sh /entrypoint.sh
COPY config.yaml /etc/zitadel/config.yaml

# Hacer ejecutable
RUN chmod +x /entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
#CMD ["start", "--config", "/etc/zitadel/config.yaml", "--masterkeyFromEnv"]
