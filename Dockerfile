FROM python:2
MAINTAINER kevin@realgeeks.com

ENV environment production

RUN apt-get update && apt-get install -y libjpeg-progs webp libwebp-dev pngcrush gifsicle ruby && gem install tiller
RUN pip install raven git+git://github.com/RealGeeks/thumbor.git@0d3e59435df9f946443c7202f52b2b7b0ccefeff

ADD data/tiller /etc/tiller

CMD ["/usr/local/bin/tiller",  "-v"]
