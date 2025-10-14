FROM ghcr.io/zitadel/zitadel:latest

#COPY entrypoint.sh /
#COPY config.yaml /etc/zitadel/config.yaml

EXPOSE 8080

#ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
#CMD ["start", "--config", "/etc/zitadel/config.yaml", "--masterkeyFromEnv"]
CMD ["start", "--masterkeyFromEnv"]
