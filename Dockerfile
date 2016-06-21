FROM jenkins:2.3

USER root
RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list
RUN apt-get update
RUN apt-get install -y docker-engine
RUN service docker start
RUN gpasswd -a jenkins docker
USER jenkins

COPY ./config/executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy 
