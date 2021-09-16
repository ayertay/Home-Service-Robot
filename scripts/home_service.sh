#!/bin/sh
xterm  -e  " cd ; cd catkin_ws_hsr/; source devel/setup.bash;
export ROBOT_INITIAL_POSE='-Y 1.57';
roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(pwd)/../../src/map/green_cafe.world" &
sleep 10
xterm  -e  " cd ; cd catkin_ws_hsr/; source devel/setup.bash;
roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(pwd)/../../src/map/map.yaml" &
sleep 10
xterm  -e  " cd ; cd catkin_ws_hsr/; source devel/setup.bash;
roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm  -e  " cd ; cd catkin_ws_hsr/; source devel/setup.bash;
rosrun pick_objects pick_objects" &
sleep 1
xterm  -e  " cd ; cd catkin_ws_hsr/; source devel/setup.bash;
rosrun add_markers add_markers"
