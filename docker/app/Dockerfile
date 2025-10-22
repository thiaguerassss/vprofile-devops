FROM maven:3.9.9-eclipse-temurin-21 AS BUILD
RUN git clone https://github.com/thiaguerassss/vprofile-devops.git
RUN cd vprofile-devops && mvn install

FROM tomcat:10-jdk21
RUN rm -rf /usr/local/tomcat/ROOT.war
COPY --from=BUILD vprofile-devops/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]