# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Catkin wrapper for the official ARSDK from Parrot"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/AutonomyLab/parrot_arsdk-release/archive/release/indigo/parrot_arsdk/3.11.0-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="x86 amd64 arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
"
DEPEND="${RDEPEND}
    ros-indigo/catkin
    sys-devel/autoconf
    sys-devel/automake
    net-misc/curl
    virtual/ffmpeg
    net-dns/avahi
    net-dns/avahi
    sys-libs/ncurses
    sys-devel/libtool
    dev-lang/nasm
    app-arch/unzip
    dev-lang/yasm
    sys-libs/zlib
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-indigo
        -DCATKIN_BUILD_BINARY_PACKAGE=1
     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}