FROM python:2
MAINTAINER kevin@realgeeks.com

ENV environment production

RUN apt-get update && apt-get install -y libjpeg-progs webp libwebp-dev pngcrush gifsicle ruby && gem install tiller
RUN pip install raven git+git://github.com/thumbor/thumbor.git@6.2.1

ADD data/tiller /etc/tiller

CMD ["/usr/local/bin/tiller",  "-v"]
