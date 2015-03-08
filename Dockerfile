FROM python:2
MAINTAINER kevin@realgeeks.com

ENV environment production

RUN apt-get update && apt-get install -y libjpeg-progs webp libwebp-dev pngcrush gifsicle ruby && gem install tiller
RUN pip install raven git+git://github.com/RealGeeks/thumbor.git@9c68b6362b7bedf7211e6bc7403c9f3f83135378

ADD data/tiller /etc/tiller

CMD ["/usr/local/bin/tiller",  "-v"]
