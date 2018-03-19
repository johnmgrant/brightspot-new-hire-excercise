#!/bin/bash


rebuildBrightspot () {
    
defaultTarget="$HOME/Servers/accuweather/webapps/"
targetDir=""
sourceDir=""

case "$#" in
     0) # current directory to default accuweather tomcat
        echo "Current directory to default accuweather tomcat"
        sourceDir="$PWD/"
        targetDir="$defaultTarget"
        echo "Running from \"$sourceDir\" to \"$targetDir\""
        ;;
esac

if [ -d $sourceDir ] && [ -d $targetDir ] && [ -e ${sourceDir}pom.xml ] ; then
    mvn clean package && \
    # ls -l ${targetDir}ROOT* && \
    rm -rf ${targetDir}ROOT* && \
    cp -v ${sourceDir}target/*.war ${targetDir}ROOT.war && \
    echo "Moved war to \"$targetDir\""
elif [ ! -e ${sourceDir}pom.xml ] ; then
    echo "\"$sourceDir\" does not contain a pom file."
elif [ ! -d $targetDir] ; then
    echo "Target: \"$targetDir\" directory does not exist."
else
    echo "Source: \"$sourceDir\" directory does not exist."
fi
    
}
