# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="pr2eus"
HOMEPAGE="http://ros.org/wiki/pr2eus"
SRC_URI="https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/pr2eus/0.3.10-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"

RDEPEND="
    ros-kinetic/control_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/euscollada
    ros-kinetic/move_base_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/pr2_description
    ros-kinetic/pr2_msgs
    ros-kinetic/roseus
    ros-kinetic/rostest
    ros-kinetic/sound_play
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    ros-kinetic/rosgraph_msgs
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