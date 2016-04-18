FROM node
MAINTAINER Kris Dages <krisdages@git.whiteboxsoftware.net>
RUN mkdir -p /data && mkdir -p /config && mkdir -p /opt/sinopia
WORKDIR /opt/sinopia
RUN npm install js-yaml sinopia
#RUN chown -R sinopia:sinopia /opt/sinopia
#USER sinopia
ADD /config.yaml /tmp/config.yaml
ADD /start.sh /opt/sinopia/start.sh
CMD ["/opt/sinopia/start.sh"]
EXPOSE 4873
VOLUME ["/data","/config"]
