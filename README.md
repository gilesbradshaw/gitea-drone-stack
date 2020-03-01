# gitea in a stack with drone

start a stack running gitea to host repository.

## environment variables

```shell
export GITEA_HOST=jj

```

## generate certificates

    sh ca.sh registry-url:5000

## generate gitea certificate

    sh gitea.sh gitea-url

## generate docker rpc secret

    openssl rand -base64 48

## initial deploy

```shell
export GITEA_HOST=the.url.com
export DRONE_RPC_SECRET=$(openssl rand -base64 48)
docker stack deploy -c docker-compose.yml gitea
```
## create gitea app with client id and secret

## add gite-host secret to repository

## deploy once installed

```
export GITEA_HOST
export DRONE_RPC_SECRET
export DRONE_GITEA_CLIENT_ID
export DRONE_GITEA_CLIENT_SECRET
docker stack deploy -c docker-compose.yml gitea
```
