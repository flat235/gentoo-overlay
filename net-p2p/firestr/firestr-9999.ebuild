# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit cmake-utils git-r3



DESCRIPTION="A simple platform for creating and sharing P2P software."
HOMEPAGE="http://firestr.com/"
SRC_URI=""
EGIT_REPO_URI="https://github.com/mempko/firestr.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

# TODO: get dependencies right

DEPEND="dev-qt/qtcore:5
dev-qt/qtgui:5
dev-qt/qtwidgets:5
dev-qt/qtnetwork:5
dev-qt/qtmultimedia:5
dev-libs/boost
dev-libs/botan
media-libs/opus
app-arch/snappy
dev-libs/ossp-uuid
dev-libs/openssl
dev-libs/gmp"
RDEPEND="${DEPEND}"


src_prepare(){
	epatch "${FILESDIR}/boost_dyn.patch"
	cmake-utils_src_prepare
}

src_configure(){
	export QT_SELECT=5
	cmake-utils_src_configure
}
