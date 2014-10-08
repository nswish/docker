FROM nswish/supervisor:v1

COPY jdk1.7.0_67 /opt/jdk1.7.0_67

RUN ln -s /opt/jdk1.7.0_67/bin/java /usr/bin/java \
 && ln -s /opt/jdk1.7.0_67/bin/javac /usr/bin/javac \
 && echo 'export JAVA_HOME=/opt/jdk1.7.0_67' > /etc/profile.d/java_home.sh

CMD ["/usr/bin/supervisord"]
