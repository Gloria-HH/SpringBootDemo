FROM java:8

VOLUME /tmp

WORKDIR /Users/gloria/Desktop/www

ADD target/*.jar /home/www/app.jar

EXPOSE 8090

ENV JAVA_OPTS=""

ENTRYPOINT exec java $JAVA_OPTS -jar /Users/gloria/Desktop/www/app.jar

