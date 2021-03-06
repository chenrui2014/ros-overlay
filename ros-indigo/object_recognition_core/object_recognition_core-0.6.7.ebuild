# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="object_recognition_core contains tools to launch several recognition pipelines, "
HOMEPAGE="http://wg-perception.github.io/object_recognition_core/"
SRC_URI="https://github.com/ros-gbp/object_recognition_core-release/archive/release/indigo/object_recognition_core/0.6.7-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ecto
	ros-indigo/ecto_image_pipeline
	ros-indigo/sensor_msgs
	dev-libs/boost
	dev-db/couchdb
	net-misc/curl
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

