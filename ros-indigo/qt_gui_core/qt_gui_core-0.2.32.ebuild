# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Integration of the ROS package system and ROSspecific plugins for a Qtbased GU"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/qt_gui_core-release/archive/release/indigo/qt_gui_core/0.2.32-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/qt_dotgraph
	ros-indigo/qt_gui
	ros-indigo/qt_gui_app
	ros-indigo/qt_gui_cpp
	ros-indigo/qt_gui_py_common
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

