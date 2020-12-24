FROM openjdk:11-nanoserver-sac2016
RUN mkdir /opt/app
COPY ./target/demo-0.0.1-SNAPSHOT.jar /opt/app
EXPOSE 8080

# This does not work (set command when running)
CMD [ "java -jar ./opt/app/demo-0.0.1-SNAPSHOT.jar" ]