# BASE IMAGE
FROM maven:3-alpine

WORKDIR /app

COPY pom.xml .

RUN mvn dependency:go-offline

#COPY src ./src

CMD ["java", "-jar", "app.jar"]

EXPOSE 80


# 
