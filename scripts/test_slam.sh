#!/bin/sh
xterm  -e  " cd ; cd catkin_ws_hsr/; source devel/setup.bash;
roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(pwd)/../../src/map/green_cafe.world" &
sleep 15
xterm  -e  " cd ; cd catkin_ws_hsr/; source devel/setup.bash;
roslaunch turtlebot_gazebo gmapping_demo.launch" &
sleep 10
xterm  -e  " cd ; cd catkin_ws_hsr/; source devel/setup.bash;
roslaunch turtlebot_rviz_launchers view_navigation.launch" & 
sleep 5
xterm  -e  " cd ; cd catkin_ws_hsr/; source devel/setup.bash;
roslaunch turtlebot_teleop keyboard_teleop.launch" 
