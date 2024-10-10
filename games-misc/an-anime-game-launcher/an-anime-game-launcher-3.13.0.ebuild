# Copyright 2023-2024 Pascal Jager
# Distributed under the terms of the GNU General Public License v3

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.24.2
	adler2@2.0.0
	aes@0.8.4
	ahash@0.8.11
	aho-corasick@1.1.3
	allocator-api2@0.2.18
	anstream@0.6.15
	anstyle-parse@0.2.5
	anstyle-query@1.1.1
	anstyle-wincon@3.0.4
	anstyle@1.0.8
	anyhow@1.0.89
	arbitrary@1.3.2
	arrayref@0.3.9
	arrayvec@0.7.6
	ashpd@0.9.2
	async-broadcast@0.7.1
	async-channel@2.3.1
	async-io@2.3.4
	async-lock@3.4.0
	async-process@2.3.0
	async-recursion@1.1.1
	async-signal@0.2.10
	async-task@4.7.1
	async-trait@0.1.83
	atomic-waker@1.1.2
	autocfg@1.4.0
	backtrace@0.3.74
	base64@0.12.3
	base64@0.21.7
	bitflags@2.6.0
	blake3@1.5.4
	block-buffer@0.10.4
	block2@0.5.1
	blocking@1.6.1
	bstr@1.10.0
	bumpalo@3.16.0
	byteorder@1.5.0
	bytes@1.7.2
	bzip2-sys@0.1.11+1.0.8
	bzip2@0.4.4
	cached@0.53.1
	cached_proc_macro@0.23.0
	cached_proc_macro_types@0.1.1
	cairo-rs@0.20.1
	cairo-sys-rs@0.20.0
	cc@1.1.28
	cfg-expr@0.17.0
	cfg-if@1.0.0
	cfg_aliases@0.2.1
	cipher@0.4.4
	colorchoice@1.0.2
	concurrent-queue@2.5.0
	constant_time_eq@0.3.1
	core-foundation-sys@0.8.7
	core-foundation@0.9.4
	cpufeatures@0.2.14
	crc-catalog@2.4.0
	crc32fast@1.4.2
	crc@3.2.1
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crypto-common@0.1.6
	darling@0.20.10
	darling_core@0.20.10
	darling_macro@0.20.10
	deflate64@0.1.9
	deranged@0.3.11
	derive_arbitrary@1.3.2
	digest@0.10.7
	dispatch@0.2.0
	displaydoc@0.2.5
	dlib@0.5.2
	dns-lookup@2.0.4
	downcast-rs@1.2.1
	either@1.13.0
	endi@1.1.0
	enum-ordinalize-derive@4.3.1
	enum-ordinalize@4.3.0
	enumflags2@0.7.10
	enumflags2_derive@0.7.10
	equivalent@1.0.1
	errno@0.3.9
	event-listener-strategy@0.5.2
	event-listener@5.3.1
	fastrand@2.1.1
	field-offset@0.3.6
	filetime@0.2.25
	flate2@1.0.34
	fluent-bundle@0.15.3
	fluent-langneg@0.13.0
	fluent-syntax@0.11.1
	fluent-template-macros@0.11.0
	fluent-templates@0.11.0
	flume@0.11.0
	fnv@1.0.7
	form_urlencoded@1.2.1
	fragile@2.0.0
	fs_extra@1.3.0
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-lite@2.3.0
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-util@0.3.31
	futures@0.3.31
	gdk-pixbuf-sys@0.20.4
	gdk-pixbuf@0.20.4
	gdk4-sys@0.9.2
	gdk4@0.9.2
	generic-array@0.14.7
	getrandom@0.2.15
	gimli@0.31.1
	gio-sys@0.20.4
	gio@0.20.4
	glib-build-tools@0.20.0
	glib-macros@0.20.4
	glib-sys@0.20.4
	glib@0.20.4
	globset@0.4.15
	gobject-sys@0.20.4
	graphene-rs@0.20.4
	graphene-sys@0.20.4
	gsk4-sys@0.9.2
	gsk4@0.9.2
	gtk4-macros@0.9.1
	gtk4-sys@0.9.2
	gtk4@0.9.2
	hashbrown@0.14.5
	hashbrown@0.15.0
	heck@0.5.0
	hermit-abi@0.3.9
	hermit-abi@0.4.0
	hex@0.4.3
	hmac@0.12.1
	human-panic@2.0.1
	ident_case@1.0.1
	idna@0.5.0
	ignore@0.4.23
	indexmap@2.6.0
	inout@0.1.3
	intl-memoizer@0.5.2
	intl_pluralrules@7.0.2
	is-docker@0.2.0
	is-wsl@0.4.0
	is_terminal_polyfill@1.70.1
	itoa@1.0.11
	jobserver@0.1.32
	js-sys@0.3.70
	kinda-virtual-fs@0.1.1
	lazy_static@1.5.0
	libadwaita-sys@0.7.0
	libadwaita@0.7.0
	libc@0.2.159
	libloading@0.8.5
	libredox@0.1.3
	linux-raw-sys@0.4.14
	lock_api@0.4.12
	lockfree-object-pool@0.1.6
	log@0.4.22
	lzma-rs@0.3.0
	lzma-sys@0.1.20
	md-5@0.10.6
	md5-asm@0.5.2
	memchr@2.7.4
	memoffset@0.9.1
	miniz_oxide@0.8.0
	minreq@2.12.0
	mio@1.0.2
	nanorand@0.7.0
	nix@0.29.0
	ntapi@0.4.1
	nu-ansi-term@0.46.0
	num-conv@0.1.0
	objc-sys@0.3.5
	objc2-app-kit@0.2.2
	objc2-core-data@0.2.2
	objc2-core-image@0.2.2
	objc2-encode@4.0.3
	objc2-foundation@0.2.2
	objc2-metal@0.2.2
	objc2-quartz-core@0.2.2
	objc2@0.5.2
	object@0.36.5
	once_cell@1.20.2
	open@5.3.0
	openssl-probe@0.1.5
	ordered-stream@0.2.0
	os_info@3.8.2
	overload@0.1.1
	pango-sys@0.20.4
	pango@0.20.4
	parking@2.2.1
	pathdiff@0.2.1
	pbkdf2@0.12.2
	percent-encoding@2.3.1
	pin-project-lite@0.2.14
	pin-utils@0.1.0
	piper@0.2.4
	pkg-config@0.3.31
	polling@3.7.3
	pollster@0.3.0
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	proc-macro-crate@3.2.0
	proc-macro-hack@0.5.20+deprecated
	proc-macro2@1.0.87
	quick-xml@0.36.2
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	raw-window-handle@0.6.2
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.5.7
	regex-automata@0.4.8
	regex-syntax@0.8.5
	relm4-css@0.9.0
	relm4-macros@0.9.0
	relm4@0.9.0
	rfd@0.15.0
	ring@0.17.8
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc_version@0.4.1
	rustix@0.38.37
	rustls-native-certs@0.6.3
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rustls@0.21.12
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.26
	scoped-tls@1.0.1
	scopeguard@1.2.0
	sct@0.7.1
	security-framework-sys@2.12.0
	security-framework@2.11.1
	self_cell@0.10.3
	self_cell@1.0.4
	semver@1.0.23
	serde@1.0.210
	serde_derive@1.0.210
	serde_json@1.0.128
	serde_repr@0.1.19
	serde_spanned@0.6.8
	sha1@0.10.6
	sharded-slab@0.1.7
	shlex@1.3.0
	signal-hook-registry@1.4.2
	simd-adler32@0.3.7
	slab@0.4.9
	smallvec@1.13.2
	socket2@0.5.7
	spin@0.9.8
	static_assertions@1.1.0
	strsim@0.11.1
	subtle@2.6.1
	syn@2.0.79
	sysinfo@0.32.0
	system-deps@7.0.3
	tar@0.4.42
	target-lexicon@0.12.16
	tempfile@3.13.0
	thiserror-impl@1.0.64
	thiserror@1.0.64
	thread_local@1.1.8
	time-core@0.1.2
	time@0.3.36
	tinystr@0.7.6
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tokio@1.40.0
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.22.22
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
	type-map@0.5.0
	typenum@1.17.0
	uds_windows@1.1.0
	unic-langid-impl@0.9.5
	unic-langid-macros-impl@0.9.5
	unic-langid-macros@0.9.5
	unic-langid@0.9.5
	unicode-bidi@0.3.17
	unicode-ident@1.0.13
	unicode-normalization@0.1.24
	untrusted@0.9.0
	url@2.5.2
	urlencoding@2.1.3
	utf8parse@0.2.2
	uuid@1.10.0
	valuable@0.1.0
	version-compare@0.2.0
	version_check@0.9.5
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.93
	wasm-bindgen-futures@0.4.43
	wasm-bindgen-macro-support@0.2.93
	wasm-bindgen-macro@0.2.93
	wasm-bindgen-shared@0.2.93
	wasm-bindgen@0.2.93
	wayland-backend@0.3.7
	wayland-client@0.31.6
	wayland-protocols@0.32.4
	wayland-scanner@0.31.5
	wayland-sys@0.31.5
	web-sys@0.3.70
	web-time@1.1.0
	webpki-roots@0.25.4
	whatadistro@0.1.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	wincompatlib@0.7.5
	windows-core@0.57.0
	windows-implement@0.57.0
	windows-interface@0.57.0
	windows-result@0.1.2
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows@0.57.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winnow@0.6.20
	xattr@1.3.1
	xdg-home@1.3.0
	xz2@0.1.7
	xz@0.1.0
	zbus@4.4.0
	zbus_macros@4.4.0
	zbus_names@3.0.0
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zeroize@1.8.1
	zeroize_derive@1.4.2
	zip@2.2.0
	zopfli@0.8.1
	zstd-safe@7.2.1
	zstd-sys@2.0.13+zstd.1.5.6
	zstd@0.13.2
	zvariant@4.2.0
	zvariant_derive@4.2.0
	zvariant_utils@2.1.0
"

DEPEND="
	>=gui-libs/libadwaita-1.4:1
	app-arch/tar
	app-arch/unzip
	app-arch/p7zip
	app-arch/cabextract
	dev-vcs/git
	net-misc/curl
	>=gui-libs/gtk-4:4
	net-misc/iputils
	virtual/libc
	sys-auth/polkit
	media-libs/libwebp

	app-arch/xz-utils
	dev-libs/glib:2
	x11-libs/cairo
	x11-libs/pango
"

declare -A GIT_CRATES=(
	[anime-game-core]='https://github.com/an-anime-team/anime-game-core;1e95d2cc4c609e4680550c4d2211f1e03f56a683;anime-game-core-%commit%'
	[anime-launcher-sdk]='https://github.com/an-anime-team/anime-launcher-sdk;5863addeda421b14892947397ec3d94b44b81f26;anime-launcher-sdk-%commit%'
)

RDEPEND="
	${DEPEND}
"

BDEPEND=">=virtual/rust-1.63
"

inherit cargo xdg-utils desktop

DESCRIPTION="Anime Game launcher with automatic anti-cheat patching"
HOMEPAGE="https://github.com/an-anime-team/an-anime-game-launcher"
SRC_URI="
	https://github.com/an-anime-team/an-anime-game-launcher/archive/${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="GPL-3"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD Boost-1.0 GPL-3
	ISC MIT MPL-2.0 Unicode-3.0 Unicode-DFS-2016 ZLIB
"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror"

QA_FLAGS_IGNORED="usr/bin/an-anime-game-launcher"

src_prepare() {
	default
	# patch the .desktop file to work in non-AppImage environment
	sed -i 's/Icon=icon/Icon=moe.launcher.an-anime-game-launcher/' assets/anime-game-launcher.desktop || die
	sed -i 's/Exec=AppRun/Exec=anime-game-launcher/' assets/anime-game-launcher.desktop || die
	# avoid stripping by the build system, we do that ourselves in Gentoo
	sed -i 's/strip = true/strip = false/' Cargo.toml || die
}

src_install() {
	cargo_src_install
	domenu assets/anime-game-launcher.desktop
	newicon assets/images/icon.png moe.launcher.an-anime-game-launcher.png
}

pkg_postinst() {
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
}
