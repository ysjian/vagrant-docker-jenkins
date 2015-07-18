#!/usr/bin/env bash


echo "======================Copy the Tools to /usr dirctory======================="
sudo cp -rf /vagrant/Tools /usr/
sudo cp -rf /vagrant/Shells /usr/


# echo "======================Install JDK8==========================="
# sudo apt-get install python-software-properties
# sudo add-apt-repository -y ppa:webupd8team/java
# sudo apt-get update
# echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
# echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
# sudo apt-get -y install oracle-java8-installer


# echo "======================Install Gradle==========================="
# sudo add-apt-repository -y ppa:cwchien/gradle
# sudo apt-get update
# sudo apt-get -y install gradle


echo "=================Export Java8 and Gradle to path=============="
cat /usr/Shells/init_path.sh >> /home/vagrant/.bashrc


echo "======================Install Git==========================="
sudo apt-get -y install git


echo "======================Install Jenkins==========================="
wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list' 
sudo apt-get update 
sudo apt-get -y install jenkins
sudo service jenkins restart


echo "======================Install Docker==========================="
sudo apt-get install -y apt-transport-https
sudo apt-get install -y curl
curl -sSL https://get.docker.com/ubuntu/ | sudo sh


echo "======================Install MySQL==========================="
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password '
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password '
sudo apt-get -y install mysql-server


echo "======================Install SQLite3==========================="
sudo apt-get  install sqlite3 libsqlite3-dev


echo "======================Install Tomcat7==========================="
sudo apt-get -y install tomcat
sudo /etc/init.d/tomcat7 stop


echo "======================Install zip and unzip==========================="
sudo apt-get -y install zip unzip


echo "======================Install sublime==========================="
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get -y install sublime-text-installer


echo "======================Install Tree==========================="
sudo apt-get -y install tree
