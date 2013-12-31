#!/bin/bash

#Disable Network Manager Service in CENTOS 6
#September 20, 2012
#To Disable Network Manager Service in Linux
#Login with root access or SSH to server
#To Stop Network Manager Service

service NetworkManager stop

#Configure chkconfig so that the Network Manager Service cannot start at Startup

chkconfig NetworkManager off

#Now Add default Net Manager

chkconfig network on

#Start default Manager

service network start
