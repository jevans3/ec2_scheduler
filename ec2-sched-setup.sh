#!/bin/bash -v
sudo yum update -y aws-cfn-bootstrap
 
sudo yum install -y python26-pip gcc
 
#config, pull python script, edit crontab,
                  sudo pip install --upgrade pip
                  sudo pip install croniter
                  OPERATOR=/home/ec2-user/ec2_scheduler.py
                  sudo wget -O $OPERATOR https://raw.githubusercontent.com/jevans3/ec2_scheduler/master/ec2_scheduler.py
                  sudo chown ec2-user:ec2-user $OPERATOR
                  sudo chmod 744 $OPERATOR
                  sudo echo \*/5 * * * * ec2-user python $OPERATOR \ >> /etc/crontab
                  sudo cat /etc/crontab | grep ec2_scheduler.py
