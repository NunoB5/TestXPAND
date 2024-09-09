FROM oraclelinux:9

MAINTAINER nunob5@hotmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.28/bin/apache-tomcat-10.1.28.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-10.1.28/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://tomcat.apache.org/tomcat-10.0-doc/appdev/sample/sample.war

EXPOSE 4041

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
