# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package is Heater messages for ROS"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/rosalfred-release/smarthome_heater_msgs-release/archive/release/indigo/smarthome_heater_msgs/0.1.21-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="Apache-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/sensor_msgs
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

