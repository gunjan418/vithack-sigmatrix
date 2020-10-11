# vithack-sigmatix

source devel/setup.bash


open gazebo sim:
roslaunch turtlebot3_gazebo turtlebot3_house.launch


move the bot
roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
roslaunch voice_teleop turtlebot_voice_teleop_stage.launch

create map of the house
roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=gmapping


save map
rosrun map_server map_saver -f map_file_name


Localization
roslaunch turtlebot3_gazebo turtlebot3_house.launch


start localization
roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=map_file_name.yaml


Run bot on Mapped Rviz:
roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/my_map_full.yaml

Packages to install extra:
slam-gmapping
map-server
amcl
move-base
dwa-local-planner


pocketsphinx
audio-common


sudo apt install ros-noetic-<package-name>

Missing files
turtlebot3_msgs

Change the amcl configuration vithack-sigmatix/Movel-AI/catkin_ws/src/turtlebot3_navigation/launch/amcl.launch initial_pose_x, initial_pose_y and initial_pose_a to match house.lauch


Speech Install:
sphinxbase
pocketsphinx
hlpr_speech
pyaudio

Speech Launch:
roslaunch hlpr_speech_recognition speech_rec.launch speech_gui:=false




Automated destination python

roslaunch turtlebot3_gazebo turtlebot3_house.launch
roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=/home/gunjan/Desktop/VITHack/vithack-sigmatix/Movel-AI/catkin_ws/my_map_full.yaml
rosrun tf tf_echo /map /base_link
python <goto_dest.py>
