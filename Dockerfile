FROM ubuntu
MAINTAINER Tomas Brambora "tomas@salsitasoft.com"

RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -q -y openjdk-7-jre-headless

ADD ./install /
ADD http://selenium.googlecode.com/files/selenium-server-standalone-2.35.0.jar /srv/

EXPOSE 4444

CMD ["/usr/local/bin/start-selenium-server.sh"]
