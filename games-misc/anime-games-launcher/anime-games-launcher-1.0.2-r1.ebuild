# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	ahash@0.8.7
	aho-corasick@1.1.2
	allocator-api2@0.2.16
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.5
	anstyle@1.0.4
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anyhow@1.0.79
	arc-swap@1.6.0
	arrayref@0.3.7
	arrayvec@0.7.4
	async-trait@0.1.77
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.12.3
	base64@0.21.7
	bitflags@1.3.2
	bitflags@2.4.1
	blake3@1.5.0
	block-buffer@0.10.4
	bstr@1.9.0
	bumpalo@3.14.0
	cached@0.47.0
	cached_proc_macro@0.18.1
	cached_proc_macro_types@0.1.0
	cairo-rs@0.18.5
	cairo-sys-rs@0.18.2
	cc@1.0.83
	cfg-expr@0.15.6
	cfg-if@1.0.0
	chrono@0.4.31
	colorchoice@1.0.0
	constant_time_eq@0.3.0
	core-foundation@0.9.4
	core-foundation-sys@0.8.6
	cpufeatures@0.2.12
	crc32fast@1.3.2
	crossbeam-channel@0.5.11
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.19
	crypto-common@0.1.6
	darling@0.14.4
	darling_core@0.14.4
	darling_macro@0.14.4
	digest@0.10.7
	displaydoc@0.2.4
	doc-comment@0.3.3
	either@1.9.0
	equivalent@1.0.1
	erased-serde@0.4.2
	errno@0.3.8
	field-offset@0.3.6
	fluent@0.16.0
	fluent-bundle@0.15.2
	fluent-langneg@0.13.0
	fluent-syntax@0.11.0
	fluent-template-macros@0.8.0
	fluent-templates@0.8.0
	flume@0.10.14
	flume@0.11.0
	fnv@1.0.7
	fragile@2.0.0
	futures@0.3.30
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	gdk-pixbuf@0.18.5
	gdk-pixbuf-sys@0.18.0
	gdk4@0.7.3
	gdk4-sys@0.7.2
	generic-array@0.14.7
	getrandom@0.2.12
	gimli@0.28.1
	gio@0.18.4
	gio-sys@0.18.1
	glib@0.18.5
	glib-build-tools@0.18.0
	glib-macros@0.18.5
	glib-sys@0.18.1
	globset@0.4.14
	gobject-sys@0.18.0
	graphene-rs@0.18.1
	graphene-sys@0.18.1
	gsk4@0.7.3
	gsk4-sys@0.7.3
	gtk4@0.7.3
	gtk4-macros@0.7.2
	gtk4-sys@0.7.3
	hashbrown@0.14.3
	heck@0.4.1
	hermit-abi@0.3.3
	home@0.5.9
	human-panic@1.2.2
	iana-time-zone@0.1.59
	iana-time-zone-haiku@0.1.2
	ident_case@1.0.1
	ignore@0.4.22
	indexmap@2.1.0
	instant@0.1.12
	intl-memoizer@0.5.1
	intl_pluralrules@7.0.2
	is-docker@0.2.0
	is-wsl@0.4.0
	itoa@1.0.10
	js-sys@0.3.66
	lazy_static@1.4.0
	libadwaita@0.5.3
	libadwaita-sys@0.5.3
	libc@0.2.152
	linux-raw-sys@0.4.12
	lock_api@0.4.11
	log@0.4.20
	lua-src@546.0.2
	luajit-src@210.5.4+c525bcb
	md-5@0.10.6
	md5-asm@0.5.1
	memchr@2.7.1
	memoffset@0.9.0
	miniz_oxide@0.7.1
	minreq@2.11.0
	mlua@0.9.4
	mlua-sys@0.5.0
	nanorand@0.7.0
	nu-ansi-term@0.46.0
	num-traits@0.2.17
	num_cpus@1.16.0
	object@0.32.2
	once_cell@1.19.0
	open@5.0.1
	openssl-probe@0.1.5
	ordered-float@2.10.1
	os_info@3.7.0
	overload@0.1.1
	pango@0.18.3
	pango-sys@0.18.0
	pathdiff@0.2.1
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	pkg-config@0.3.28
	ppv-lite86@0.2.17
	proc-macro-crate@1.3.1
	proc-macro-crate@2.0.0
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro-hack@0.5.20+deprecated
	proc-macro2@1.0.76
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	regex-automata@0.4.3
	regex-syntax@0.8.2
	relm4@0.7.0-beta.2
	relm4-macros@0.7.0-beta.2
	ring@0.17.7
	rustc-demangle@0.1.23
	rustc-hash@1.1.0
	rustc_version@0.4.0
	rustix@0.38.28
	rustls@0.21.10
	rustls-native-certs@0.6.3
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rusty_pool@0.7.0
	ryu@1.0.16
	same-file@1.0.6
	schannel@0.1.23
	scopeguard@1.2.0
	sct@0.7.1
	security-framework@2.9.2
	security-framework-sys@2.9.1
	self_cell@0.10.3
	self_cell@1.0.3
	semver@1.0.21
	serde@1.0.195
	serde-value@0.7.0
	serde_derive@1.0.195
	serde_json@1.0.111
	serde_spanned@0.6.5
	sha1@0.10.6
	sha1-asm@0.5.2
	sharded-slab@0.1.7
	slab@0.4.9
	smallvec@1.11.2
	snafu@0.7.5
	snafu-derive@0.7.5
	spin@0.9.8
	strsim@0.10.0
	syn@1.0.109
	syn@2.0.48
	system-deps@6.2.0
	target-lexicon@0.12.13
	thiserror@1.0.56
	thiserror-impl@1.0.56
	thread_local@1.1.7
	tinystr@0.7.5
	tokio@1.35.1
	toml@0.8.8
	toml_datetime@0.6.5
	toml_edit@0.19.15
	toml_edit@0.20.7
	toml_edit@0.21.0
	tracing@0.1.40
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	type-map@0.4.0
	typenum@1.17.0
	unic-langid@0.9.4
	unic-langid-impl@0.9.4
	unic-langid-macros@0.9.4
	unic-langid-macros-impl@0.9.4
	unicode-ident@1.0.12
	untrusted@0.9.0
	utf8parse@0.2.1
	uuid@1.6.1
	valuable@0.1.0
	version-compare@0.1.1
	version_check@0.9.4
	walkdir@2.4.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.89
	wasm-bindgen-backend@0.2.89
	wasm-bindgen-macro@0.2.89
	wasm-bindgen-macro-support@0.2.89
	wasm-bindgen-shared@0.2.89
	webpki-roots@0.25.3
	which@5.0.0
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	wincompatlib@0.7.4
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winnow@0.5.34
	xxhash-rust@0.8.8
	zerocopy@0.7.32
	zerocopy-derive@0.7.32
"

DEPEND="
	app-arch/tar
	app-arch/unzip
	app-arch/p7zip
	dev-util/xdelta:3[lzma]
	app-arch/cabextract
	dev-vcs/git
	net-misc/curl
	>=gui-libs/gtk-4
	net-misc/iputils
	virtual/libc
	sys-auth/polkit
	x11-libs/pango
	x11-libs/cairo
	dev-libs/glib
"

declare -A GIT_CRATES=(
	[anime-game-core]='https://github.com/an-anime-team/anime-game-core;d2428c0962e85e526805c4c64a249e21c73b536d;anime-game-core-%commit%'
)

RDEPEND="
	${DEPEND}
	gui-libs/libadwaita:1
"

inherit cargo xdg-utils desktop

DESCRIPTION="Universal linux launcher for anime games"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/an-anime-team/anime-games-launcher"
SRC_URI="
	https://github.com/an-anime-team/anime-games-launcher/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="GPL-3"
# Dependent crate licenses
LICENSE+="
	0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0
	CC0-1.0 GPL-3 ISC MIT MIT-0 MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB
"
SLOT="0"
KEYWORDS="~amd64"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_prepare() {
	default
	# patch the .desktop file to work in non-AppImage environment
	sed -i 's/Icon=icon/Icon=moe.launcher.anime-games-launcher/' assets/anime-games-launcher.desktop || die
	sed -i 's/Exec=AppRun/Exec=anime-games-launcher/' assets/anime-games-launcher.desktop || die
	# avoid stripping by the build system, we do that ourselves in Gentoo
	sed -i 's/strip = true/strip = false/' Cargo.toml || die
}

src_install() {
	cargo_src_install
	domenu assets/anime-games-launcher.desktop
	newicon assets/images/icon.png moe.launcher.anime-games-launcher.png
}

pkg_postinst() {
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
}
