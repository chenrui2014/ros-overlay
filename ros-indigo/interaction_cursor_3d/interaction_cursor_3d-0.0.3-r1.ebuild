# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Metapackage for interaction cursor functionality."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aleeper/interaction_cursor_3d-release/archive/release/indigo/interaction_cursor_3d/0.0.3-1.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-indigo/cmake_modules
    ros-indigo/geometry_msgs
    ros-indigo/interaction_cursor_msgs
    ros-indigo/message_runtime
    ros-indigo/razer_hydra
    ros-indigo/roscpp
    ros-indigo/rviz
    ros-indigo/rviz_fixed_view_controller
    ros-indigo/std_msgs
    ros-indigo/tf
    ros-indigo/visualization_msgs
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}