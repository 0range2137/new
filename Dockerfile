FROM eclipse-temurin:21-jre

WORKDIR /app

RUN curl -o velocity.jar https://api.papermc.io/v2/projects/velocity/versions/3.4.0-SNAPSHOT/builds/557/downloads/velocity-3.4.0-SNAPSHOT-557.jar

# Kopiowanie plików z repo — upewnij się, że istnieją!
COPY velocity.toml .
COPY eula.txt .
COPY plugins/ plugins/

EXPOSE 25565

CMD ["java", "-Xms512M", "-Xmx1G", "-jar", "velocity.jar"]