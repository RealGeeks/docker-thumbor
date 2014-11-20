# Thumbor in Docker

This is an opinionated docker container that runs Thumbor with the following settings:

1. Webp enabled, sniffing for Accept headers
2. All persistence disabled, caching should be done on the CDN
3. All optimizers enabled
4. Using PIL engine

## Deploying

You need to pass the secret key in an environment variable.  Example:

```bash
docker run -e "security_key=foofoosecret" -p 8888:8888 realgeeks/thumbor
```
