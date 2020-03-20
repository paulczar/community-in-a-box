#!/bin/bash


export ENV_NAME=ingress-demo
export ENV_DIR="./envs/ingress"

export DOMAIN=ciab.example.com

## Discourse Vars
export DISCOURSE_ADMIN_USERNAME=admin
export DISCOURSE_ADMIN_PASSWORD=this-is-a-bad-password
export DISCOURSE_ADMIN_EMAIL=email@example.com
export DISCOURSE_HOSTNAME=discourse.${DOMAIN}
export DISCOURSE_SITENAME=ciab
## Setting DISCOURSE_REDIS_HOST will disable built in redis server
export DISCOURSE_REDIS_HOST=
export DISCOURSE_REDIS_PASSWORD=
## Setting DISCOURSE_POSTGRES_HOST will disable built in redis server
export DISCOURSE_POSTGRES_HOST=
export DISCOURSE_POSTGRES_ADMIN_PASSWORD=
export DISCOURSE_POSTGRES_USERNAME=
export DISCOURSE_POSTGRES_PASSWORD=
export DISCOURSE_POSTGRES_DATABASE=

export ROCKETCHAT_HOSTNAME=chat.${DOMAIN}
export ROCKETCHAT_SMTP_ENABLED=false
export ROCKETCHAT_SMTP_USERNAME=
export ROCKETCHAT_SMTP_PASSWORD=
export ROCKETCHAT_SMTP_HOST=
export ROCKETCHAT_SMTP_PORT=
export ROCKETCHAT_MONGO_ROOT_PASSWORD=root-password
export ROCKETCHAT_MONGO_USERNAME=rocketchat
export ROCKETCHAT_MONGO_PASSWORD=rocket-password
export ROCKETCHAT_MONGO_KEY=key1234556