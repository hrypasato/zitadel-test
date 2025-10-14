FROM ghcr.io/zitadel/zitadel:latest

EXPOSE 8080

CMD ["zitadel", "start", "--config", "/etc/zitadel/config.yaml"]
