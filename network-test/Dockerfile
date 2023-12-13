FROM   ubuntu:18.04
RUN apt-get -y update
RUN apt-get -y upgrade

#### The stuff for the Speedtest CLI ####

ENV INSTALL_KEY=379CE192D401AB61
ENV DEB_DISTRO=bionic

RUN apt update && apt-get install gnupg1 apt-transport-https dirmngr -y
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY
RUN echo "deb https://ookla.bintray.com/debian ${DEB_DISTRO} main" | tee  /etc/apt/sources.list.d/speedtest.list
RUN apt-get update && apt-get install speedtest

#### For dev purposes ####
RUN apt-get -y install nano
RUN apt-get -y install curl
RUN apt-get -y install iputils-ping

ARG INFLUXDB
ARG PINGHOST

RUN INFLUXDB="$INFLUXDB"
RUN PINGHOST="$PINGHOST"

# Place and run our specific start script
COPY ./*.sh /bin/

CMD ["/bin/start.sh"]