FROM python:2
MAINTAINER kevin@realgeeks.com

ENV environment production

RUN apt-get update && apt-get install -y libjpeg-progs webp libwebp-dev pngcrush gifsicle ruby && gem install tiller
RUN pip install raven git+git://github.com/RealGeeks/thumbor.git@9188ef62f82c00eb97f2bfc130dbe35c657866ed

ADD data/tiller /etc/tiller

CMD ["/usr/local/bin/tiller",  "-v"]
