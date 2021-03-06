# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides nodes for calculating the minimal distance to robot links,"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_obstacle_distance_moveit/0.7.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cob_control_msgs
	ros-kinetic/cob_srvs
	ros-kinetic/eigen_conversions
	ros-kinetic/geometric_shapes
	ros-kinetic/geometry_msgs
	ros-kinetic/moveit_core
	ros-kinetic/moveit_msgs
	ros-kinetic/moveit_ros_perception
	ros-kinetic/moveit_ros_planning_interface
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/tf
	ros-kinetic/tf_conversions
	dev-libs/boost
	sci-libs/fcl
	virtual/pkgconfig
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

