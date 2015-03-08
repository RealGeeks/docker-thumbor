FROM python:2
MAINTAINER kevin@realgeeks.com

ENV environment production
ENV NEW_RELIC_CONFIG_FILE newrelic.ini

RUN apt-get update && apt-get install -y libjpeg-progs webp libwebp-dev pngcrush gifsicle ruby && gem install tiller
RUN pip install newrelic raven git+git://github.com/RealGeeks/thumbor.git@52e55a076a1a028feacf6beb08a9e1cb69832bf6

ADD data/tiller /etc/tiller

CMD ["/usr/local/bin/tiller",  "-v"]
