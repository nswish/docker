FROM nswish/java7:20141018

ADD apache-ant-1.9.4-bin.tar.gz /opt

RUN useradd tomcat -m \
 && echo tomcat:tomcat | chpasswd \
 && printf '\n[program:tomcat7]\ncommand=/home/tomcat/apache-tomcat-7.0.56/bin/catalina.sh run\nuser=tomcat\nenvironment=LC_ALL="zh_CN.UTF-8",LANG="zh_CN.UTF-8"\nstdout_logfile=/home/tomcat/stdout.txt\nstderr_logfile=/home/tomcat/stderr.txt' \
    >> /etc/supervisor/conf.d/supervisord.conf \
 && echo 'export ANT_HOME=/opt/apache-ant-1.9.4' > /etc/profile.d/ant.sh \
 && ln -s /opt/apache-ant-1.9.4/bin/ant /usr/bin/ant

ADD apache-tomcat-7.0.56.tar.gz /home/tomcat

RUN sed -i '72 i URIEncoding="UTF-8"' /home/tomcat/apache-tomcat-7.0.56/conf/server.xml

RUN chown -R tomcat:tomcat /home/tomcat/apache-tomcat-7.0.56

EXPOSE 8080

CMD ["/usr/bin/supervisord"]
