FROM eclipse-temurin:21-jre

WORKDIR /app

# Pobranie Velocity
RUN curl -o velocity.jar https://api.papermc.io/v2/projects/velocity/versions/3.4.0-SNAPSHOT/builds/557/downloads/velocity-3.4.0-SNAPSHOT-557.jar

# Plugins
COPY plugins/ plugins/

EXPOSE 25565

# Uruchomienie z parametrami CLI — BEZ pliku konfiguracyjnego
CMD ["java", "-Xms512M", "-Xmx1G", "-jar", "velocity.jar", "--bind", "0.0.0.0:25565", "--server", "tabmc=tabmc.pl:25565", "--default-server", "tabmc"]