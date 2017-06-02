# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="Driver for Microstrain 3DM-GX4-25 IMU
    This package is modified by robotis.
 "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_imu_3dm_gx4/0.1.3-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="Apache 2"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/diagnostic_updater
    ros-kinetic/geometry_msgs
    ros-kinetic/message_runtime
    ros-kinetic/roscpp
    ros-kinetic/sensor_msgs
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/message_generation
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

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
    export PYTHONPATH="/${ROS_PREFIX}/lib/python3.5/site-packages:${PYTHONPATH}"    export PYTHONPATH="/${ROS_PREFIX}/lib64/python3.5/site-packages:${PYTHONPATH}"    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}