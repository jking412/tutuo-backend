FROM openjdk:17-jdk
# 安装java依赖并创建app.jar
COPY ./target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]