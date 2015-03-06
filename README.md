# Thumbor in Docker

This is an opinionated docker container that runs Realgeeks' thumbor fork with the following settings:

1. Webp enabled, sniffing for Accept headers
2. All persistence disabled. Caching should be done on the CDN.
3. Gifsicle, Pngcrush, and Jpegtran optimizers enabled
4. Using PIL engine
5. Integrated Sentry support
6. Etags are disabled
7. New Relic agent is installed

## Deploying

Some environment variables are required.  Example:

```bash
docker run \
    -e "THUMBOR_SECURITY_KEY=foofoosecret" \
    -e "SENTRY_DSN=http://whatever" \
    -e "NEWRELIC_KEY=adsfasdf" \
    -e "ALLOW_UNSAFE=False" \
    -p 8888:8888 realgeeks/thumbor
```
