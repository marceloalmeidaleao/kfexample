FROM centos:7
USER root

COPY instalador/kafka/ /opt/kafka
COPY instalador/script.zip /opt/
WORKDIR /opt

#Atualizacao

#RUN yum update -y
RUN yum -y install sudo
RUN sudo yum -y install unzip

RUN unzip script.zip
RUN chmod 775 /opt/menu.sh 
RUN chmod 775 -R /opt/scripts_base/

#RUN add-apt-repository ppa:webupd8team/java
#RUN apt-get install oracle-java8-installer
#RUN add-apt-repository ppa:webupd8team/java && sudo apt update
RUN yum -y install java-1.8.0-openjdk
RUN yum -y install net-tools
#RUN rm -rf /var/lib/apt/lists/* 
#ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64 #This can vary
ENV PATH $PATH:$JAVA_HOME/bin
#SHELL ["/bin/bash", "-c"]
EXPOSE 9092/tcp
EXPOSE 2181/tcp
EXPOSE 9999/tcp
EXPOSE 8080/tcp

RUN chmod +x kafka/*.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh
CMD ["/run.sh"]

