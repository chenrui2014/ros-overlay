# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package holds example launch files for running the ROS navigation stack in "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/navigation_tutorials-release/archive/release/indigo/navigation_stage/0.2.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/amcl
	ros-indigo/fake_localization
	ros-indigo/gmapping
	ros-indigo/map_server
	ros-indigo/move_base
	ros-indigo/stage_ros
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

