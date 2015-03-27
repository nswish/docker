#!/bin/sh
if [ ! -d "osv" ]; then
  git clone git://git-server:9149/home/git/osv.git
fi

cd osv \
&& git pull \
&& rm -rf target \
&& ../apache-maven-3.3.1/bin/mvn compile package \
&& cd .. \
&& apache-tomcat-7.0.56/bin/shutdown.sh \
&& cp -R osv/target/osv-0.0.1 apache-tomcat-7.0.56/webapps/osv \
&& apache-tomcat-7.0.56/bin/startup.sh
