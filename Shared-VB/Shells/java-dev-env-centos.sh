#!/usr/bin/env bash


echo "======================Copy the Tools to /usr dirctory======================="
sudo cp -rf /vagrant/Tools /usr/
sudo cp -rf /vagrant/Shells /usr/



# echo "======================Install JDK8==========================="
	

# echo "======================Install Gradle==========================="


echo "=================Export Java8 and Gradle to path=============="
cat /usr/Shells/init_path.sh >> /home/vagrant/.bashrc


echo "======================Install vim==========================="
sudo yum -y install vim


echo "======================Install Git==========================="
sudo yum -y install git


echo "======================Install Jenkins==========================="
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum -y install jenkins


# echo "======================Install MySQL==========================="
# sudo yum -y install mysql-server


# echo "======================Install SQLite3==========================="


# echo "======================Install zip and unzip==========================="
# sudo yum -y install zip
# sudo yum -y install unzip


# echo "======================Install Tree==========================="
# sudo yum -y install tree
