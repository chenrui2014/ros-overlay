# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Launch files to start the openni2_camera drivers using rgbd_launch"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/openni2_launch/archive/release/indigo/openni2_launch/0.2.2-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/depth_image_proc
	ros-indigo/image_proc
	ros-indigo/nodelet
	ros-indigo/openni2_camera
	ros-indigo/rgbd_launch
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

