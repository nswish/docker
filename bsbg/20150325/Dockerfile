FROM nswish/tomcat7:20141018

ADD build-osv.sh /home/tomcat/build.sh
ADD apache-maven-3.3.1 /home/tomcat/apache-maven-3.3.1

RUN apt-get update \
 && apt-get install -y git \
 && printf "\ntomcat	ALL=(ALL:ALL) ALL" >> /etc/sudoers \
 && chown -R tomcat:tomcat /home/tomcat/apache-maven-3.3.1 \
 && chown tomcat:tomcat /home/tomcat/build.sh \
 && chmod u+x /home/tomcat/build.sh

EXPOSE 8080

CMD ["/usr/bin/supervisord"]
