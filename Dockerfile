FROM openjdk:8-jdk
WORKDIR /app
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.76/bin/apache-tomcat-9.0.76.tar.gz
RUN tar -xvf apache-tomcat-9.0.76.tar.gz
COPY Amazon.war /app/apache-tomcat-9.0.76/webapps/
EXPOSE 8080
WORKDIR /app/apache-tomcat-9.0.76/bin
CMD ["./catalina.sh", "run"]
