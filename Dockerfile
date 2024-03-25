FROM openjdk:17-jdk
# 安装java依赖并创建app.jar
COPY ./* /app/
WORKDIR /app

RUN apt-get update && apt-get install -y maven
RUN mvn install && mvn package
RUN mv target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]