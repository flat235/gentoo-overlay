# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit versionator
MY_PV=$(replace_version_separator 2 '-')
MY_P="${PN}-${MY_PV}"
MY_TOPV="$(get_version_component_range 1-2)"

DESCRIPTION="midi keyboard (learning) game"
HOMEPAGE="https://github.com/allan-simon/linthesia"
SRC_URI="https://github.com/allan-simon/${PN}/archive/${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-cpp/gtkmm:2.4 dev-cpp/gconfmm dev-cpp/gtkglextmm media-libs/alsa-lib"
RDEPEND="${DEPEND}"

#S="${WORKDIR}/${PN}"
#
#src_prepare() {
#	epatch "${FILESDIR}/${PV}-makefile.patch"
#	epatch "${FILESDIR}/${PV}-midi.patch"
#}
