# frontend-build docker image

Image I use to build client-side static files (JS, CSS) using SASS, Nodejs

Provided image has `nodejs`, `ruby` and `bundler` installed for sass/compass builds.

## Available tags
- [latest](https://hub.docker.com/r/slyg/frontend-build/)
- [6.3.0](https://hub.docker.com/r/slyg/frontend-build/)
- [5.4.1](https://hub.docker.com/r/slyg/frontend-build/)

## Typical usage

### Dockerfile

```dockerfile
FROM slyg/frontend-build:latest

WORKDIR /var/www/web
ADD . /var/www/web

RUN bundle install \
    npm install
```

### docker-compose

```yaml
app:
  build: .
  dockerfile: Dockerfile
  volumes:
    - ./public:/var/www/web/public
  command: bash -c "npm test && npm run build"
```
