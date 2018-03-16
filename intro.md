title: Brightspot Intro
author:
  name: Perfect Sense Digital
  twitter: perfectsensedig
  url: https://github.com/perfectsense/brightspot-cms
output: intro.html
style: styles.css
controls: true

--

![logo](brightspot-logo.png)
#### Development Introduction

--

# Inspire Confidence

* Public demo site
* CMS Showcase
* Active plugins

[Brightspot Installer](http://www.brightspot.com/installer)

--

[![](architecture.jpeg)](architecture.jpeg)

--

# Development Stack

* Java 8
* Maven
* Tomcat
* MySQL
* Solr
* Amazon S3

--

# Other Tools

* Git/Github
* Jenkins CI
* Travis CI
* Artifactory
* BEAM

--

# Local Development

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

* [Vagrant](https://www.vagrantup.com/downloads.html)

* Install JDK

* Install maven

* Run maven archetype command

--

# Homebrew installation

* [Homebrew](http://brew.sh/)
* `brew cask update`
* `brew install Caskroom/cask/virtualbox`
* `brew install Caskroom/cask/vagrant`
* `brew install Caskroom/cask/java`
* `brew install maven`

-- 

```
mvn archetype:generate -B \
    -DarchetypeRepository=http://artifactory.psdops.com/public/ \
    -DarchetypeGroupId=com.psddev \
    -DarchetypeArtifactId=cms-app-archetype \
    -DarchetypeVersion=3.2-SNAPSHOT \
    -DgroupId=com.psddev \
    -DartifactId=training
```

--

--

# Debug Tools

* /_debug
* Schema
* Querying
* Commit History








