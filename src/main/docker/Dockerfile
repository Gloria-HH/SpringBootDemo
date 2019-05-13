#FROM java:8
#EXPOSE 8090
#VOLUME /tmp
#ADD spring-boot-demo-0.0.1-SNAPSHOT.jar spring-demo.jar
#RUN sh -c 'touch /spring-demo.jar'
#ENV JAVA_OPTS=""
#ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /spring-demo.jar" ]

FROM java:8
EXPOSE 8090
VOLUME /tmp
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]