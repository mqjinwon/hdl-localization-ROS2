# Author: TaeYoung Kim
# email: tyoung96@yonsei.ac.kr

FROM osrf/ros:humble-desktop

# Install PCL & Eigen & essential libraries
RUN apt-get update && apt-get install -y cmake libatlas-base-dev libeigen3-dev libpcl-dev libgoogle-glog-dev libsuitesparse-dev libglew-dev wget unzip
RUN apt-get install -y ros-humble-cv-bridge ros-humble-pcl-conversions ros-humble-xacro ros-humble-robot-state-publisher \
    ros-humble-image-transport ros-humble-image-transport-plugins ros-humble-pcl-ros libpcap-dev

WORKDIR /root/workspace

# Load ROS environment at each run
COPY ./ros_entrypoint.sh /
RUN chmod 755 /ros_entrypoint.sh
ENTRYPOINT ["/ros_entrypoint.sh"]

CMD ["bash"]