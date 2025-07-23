# Usa Tomcat com JRE 8 (Temurin) como base
FROM tomcat:8.5.100-jre8-temurin-jammy

# Baixa o driver JDBC do PostgreSQL para o Tomcat ler o banco
ADD https://jdbc.postgresql.org/download/postgresql-42.7.3.jar /usr/local/tomcat/lib/postgresql-42.7.3.jar

# Copia o contexto (DataSource) para configurar a conexão no Tomcat
COPY context.xml /usr/local/tomcat/conf/context.xml

# Copia o WAR do Activiti REST para o Tomcat
COPY activiti-rest.war /usr/local/tomcat/webapps/activiti-rest.war

# Configura opções adicionais do Tomcat/Java
ENV CATALINA_OPTS="-Djava.security.egd=file:/dev/./urandom"

# Expõe a porta padrão do Tomcat
EXPOSE 8080

# Comando para iniciar o Tomcat
CMD ["catalina.sh", "run"]
