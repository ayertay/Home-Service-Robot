# Home Service Robot

Project simulates a home robot that is tasked to autonomously 
go to the pickup zone, pick up the green cube, and drop off 
at the dropoff zone.

## How it works
Robot uses odometry and laser scan data to localize itself
using adaptive monte carlo localization (AMCL), 
finds route to the goal and navigates with Dijkstra's algorithm

Home Service robot is simulated in a Gazebo world and it uses the [turtlebot_gazebo](https://wiki.ros.org/turtlebot_gazebo) package for simulation
Map for the navigation is created using [pgm_map_creator](https://github.com/udacity/pgm_map_creator). Using the odometry and laser scan data robot localizes itself
using adaptive monte carlo localization [AMCL](http://wiki.ros.org/amcl) package and constructs the route to the goal using Dijkstra's algorithm.
It is possible to control the robot manually using [teleop_twist_keyboard](http://wiki.ros.org/teleop_twist_keyboard) package. pick_objects package
uses [move_base](http://wiki.ros.org/move_base) to move the robot to its goal. add_marker package adds a visual marker to simulate a package in rviz configured under the 
[turtlebot_rviz_launchers](http://wiki.ros.org/turtlebot_rviz_launchers) package.

## Prerequisites
1. ROS (Kinetic) with Gazebo
2. Install xterm `sudo apt-get install xterm`

## Build and Launch
1. Create catkin workspace:
```
sudo apt-get update && sudo apt-get upgrade -y
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ..
catkin_make
```

2. Clone this repository:

```
cd ~/catkin_ws/src/
https://github.com/ayertay/Home-Service-Robot.git
```

3. Install dependencies:

```
cd ~/catkin_ws/
source devel/setup.bash
rosdep -i install gmapping
rosdep -i install turtlebot_teleop
rosdep -i install turtlebot_rviz_launchers
rosdep -i install turtlebot_gazebo
```

4. Build the project
```
catkin_make
source devel/setup.bash
```

5. Run scripts to launch
```
source devel/setup.bash
chmod +x ./src/scripts/home_service.sh
./src/scripts/home_service.sh
```
