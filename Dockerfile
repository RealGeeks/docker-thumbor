FROM python:2
MAINTAINER kevin@realgeeks.com

ENV environment production

RUN apt-get update && apt-get install -y libjpeg-progs webp libwebp-dev pngcrush gifsicle ruby && gem install tiller
RUN pip install raven git+git://github.com/RealGeeks/thumbor.git@c91fe8f32570323d412304291c54d3bd10a074b2

ADD data/tiller /etc/tiller

CMD ["/usr/local/bin/tiller",  "-v"]
