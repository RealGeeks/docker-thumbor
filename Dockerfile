FROM python:2
MAINTAINER kevin@realgeeks.com

ENV environment production

RUN apt-get update && apt-get install -y libjpeg-progs webp libwebp-dev pngcrush gifsicle ruby && gem install tiller
RUN pip install raven git+git://github.com/RealGeeks/thumbor.git@a07f7b0a9c340477de69026b14643091f33794e7

ADD data/tiller /etc/tiller

CMD ["/usr/local/bin/tiller",  "-v"]
