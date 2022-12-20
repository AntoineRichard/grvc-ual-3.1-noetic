#!/usr/bin/bash

rm -f ual_backend_mavros/CATKIN_IGNORE
touch ual_backend_mavlink/CATKIN_IGNORE
touch ual_backend_gazebo_light/CATKIN_IGNORE
touch ual_backend_dji_ros/CATKIN_IGNORE
touch ual_backend_crazyflie/CATKIN_IGNORE
touch ual_backend_ue/CATKIN_IGNORE

sudo apt install -y libeigen3-dev
sudo apt install ros-$(rosversion -d)-joy
sudo apt install ros-$(rosversion -d)-geodesy
sudo apt install -y ros-$(rosversion -d)-mavros
sudo apt install -y ros-$(rosversion -d)-mavros-extras
sudo geographiclib-get-geoids egm96-5
sudo usermod -a -G dialout $USER
sudo apt remove modemmanager
