FROM eclipse-temurin:17-jre

WORKDIR /app

COPY target/devops-demo-1.0.war app.war

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.war"]
