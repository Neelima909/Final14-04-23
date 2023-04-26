FROM tomcat:9
COPY XYZtechnologies-1.0.war /usr/local/tomcat/webapps
EXPOSE 8090
CMD ["catalina.sh", "run"]
