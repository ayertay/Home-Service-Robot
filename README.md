# Home Service Robot

Project simulates a home robot that is tasked to autonomously 
go to the pickup zone, pick up the green cube, and drop off 
at the dropoff zone.

## How it works
Robot uses odometry and laser scan data to localize itself
using adaptive monte carlo localization (AMCL), 
finds route to the goal and navigates with Dijkstra's algorithm

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
