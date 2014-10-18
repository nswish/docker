FROM nswish/tomcat7:v0

ADD build.xml /home/tomcat/build.xml

RUN apt-get install -y subversion sudo \
 && printf "\ntomcat	ALL=(ALL:ALL) ALL" >> /etc/sudoers \
 && chown tomcat:tomcat /home/tomcat/build.xml

EXPOSE 8080

CMD ["/usr/bin/supervisord"]
