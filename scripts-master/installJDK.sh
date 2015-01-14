#!/bin/bash

# author : dongc 
#   date : 2014-08-06 00:13
# TODO optimize

# 1. remove openjdk if exists.
for i in $(rpm -qa | grep jdk | grep -v grep)
do
  echo "Deleting rpm -> "$i
  rpm -e --nodeps $i
done

if [[ ! -z $(rpm -qa | grep jdk | grep -v grep) ]];
then 
	echo "-->Failed to remove the defult Jdk."
else 
	# 2.unzip and install JDK
	rpm -ivh  jdk-7u65-linux-i586.rpm

	# 3. config /etc/profile
	cp /etc/profile /etc/profile.bak

	echo "JAVA_HOME=/usr/java/jdk1.7.0-65" >> /etc/profile
	echo "CLASSPATH=.:$JAVA_HOME/lib.tools.jar" >> /etc/profile
	echo "PATH=$JAVA_HOME/bin:$PATH" >> /etc/profile
	echo "export JAVA_HOME CLASSPATH PATH" >> /etc/profileo 

	  
	# 4. Test JDK evironment
	if [[ ! -z $(ls /usr/java/jdk1.7.0-65) ]];
	then
		echo "-->Failed to install JDK"
	else 
		echo "-->JDK has been successed installed."
		echo "java -version:"
		java -version
		echo "JAVA_HOME:" $JAVA_HOME
	fi
fi
