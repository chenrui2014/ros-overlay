# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package implements the Care-O-bot mimic"
HOMEPAGE="http://ros.org/wiki/cob_mimic"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_mimic/0.6.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/message_runtime
	ros-kinetic/roscpp
	ros-kinetic/roslib
	dev-libs/boost
	media-video/vlc
	media-video/vlc
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

