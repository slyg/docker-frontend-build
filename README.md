# frontend-build docker image
Image I use to build client-side static files (JS, CSS) using SASS, Nodejs

## Typical usage:

### Dockerfile

```dockerfile
FROM slyg/frontend-build:latest

WORKDIR /var/www/web
ADD . /var/www/web

RUN npm install
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
