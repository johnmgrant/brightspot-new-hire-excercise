#!/bin/bash
# Refernce: https://tomcat.apache.org/tomcat-7.0-doc/setup.html

setTomcatEnvironment () {
	DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

		cd $DIR/bin && 
		tar xvfz commons-daemon-native.tar.gz && 
		cd commons-daemon-1.0.15-native-src/unix && 
		./configure --with-java=$JAVA_HOME && 
		make && 
		cp jsvc ../.. && 
		cd ../.. &&
		rm -rf commons-daemon-1.0.15-native-src
}

createTomcatDaemon() {
CATALINA_BASE=$CATALINA_HOME
    cd $CATALINA_HOME
    ./bin/jsvc \
        -classpath $CATALINA_HOME/bin/bootstrap.jar:$CATALINA_HOME/bin/tomcat-juli.jar \
        -outfile $CATALINA_BASE/logs/catalina.out \
        -errfile $CATALINA_BASE/logs/catalina.err \
        -Dcatalina.home=$CATALINA_HOME \
        -Dcatalina.base=$CATALINA_BASE \
        -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager \
        -Djava.util.logging.config.file=$CATALINA_BASE/conf/logging.properties \
        org.apache.catalina.startup.Bootstrap
}

setTomcatEnvironment
#setTomcatDaemon
