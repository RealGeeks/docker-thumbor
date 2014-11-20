# Thumbor in Docker

This is an opinionated docker container that runs Thumbor with the following settings:

1. Webp enabled, sniffing for Accept headers
2. All persistence disabled. Caching should be done on the CDN.
3. Gifsicle, Pngcrush, and Jpegtran optimizers enabled
4. Using PIL engine
5. Integrated Sentry support

## Deploying

You need to pass the secret key and sentry DSN in an environment variable.  Example:

```bash
docker run -e "SECURITY_KEY=foofoosecret" -e "SENTRY_DSN=http://whatever" -p 8888:8888 realgeeks/thumbor
```
