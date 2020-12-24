FROM openjdk:11-nanoserver as build
WORKDIR /usr/src/myapp
COPY mvnw.cmd .
COPY pom.xml .
COPY .mvn/ ./.mvn
RUN mvnw install
COPY . .
RUN mvnw package && java -jar target/myapp.jar

FROM openjdk:11-jre-nanoserver
COPY --from=build /usr/src/myapp/target/myapp.jar /usr/src/myapp
WORKDIR /usr/src/myapp
RUN java -jar myapp.jar