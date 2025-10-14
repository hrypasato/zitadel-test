#!/bin/sh

# Reemplazar variables de entorno
envsubst < /etc/zitadel/config.yaml.template > /etc/zitadel/config.yaml

# Iniciar Zitadel
exec /zitadel start --config /etc/zitadel/config.yaml --masterkeyFromEnv
