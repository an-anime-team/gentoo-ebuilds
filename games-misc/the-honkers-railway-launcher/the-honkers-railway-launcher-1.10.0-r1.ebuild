# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.24.2
	adler2@2.0.0
	aes@0.8.4
	ahash@0.8.11
	aho-corasick@1.1.3
	allocator-api2@0.2.21
	anstream@0.6.18
	anstyle-parse@0.2.6
	anstyle-query@1.1.2
	anstyle-wincon@3.0.7
	anstyle@1.0.10
	anyhow@1.0.95
	arbitrary@1.4.1
	arrayref@0.3.9
	arrayvec@0.7.6
	ashpd@0.10.2
	async-broadcast@0.7.2
	async-recursion@1.1.1
	async-trait@0.1.85
	autocfg@1.4.0
	backtrace@0.3.74
	base64@0.12.3
	base64@0.21.7
	bitflags@2.7.0
	blake3@1.5.5
	block-buffer@0.10.4
	block2@0.5.1
	bstr@1.11.3
	bumpalo@3.16.0
	byteorder@1.5.0
	bytes@1.9.0
	bzip2-sys@0.1.11+1.0.8
	bzip2@0.4.4
	cached@0.53.1
	cached_proc_macro@0.23.0
	cached_proc_macro_types@0.1.1
	cairo-rs@0.20.7
	cairo-sys-rs@0.20.7
	cc@1.2.9
	cfg-expr@0.17.2
	cfg-if@1.0.0
	cfg_aliases@0.2.1
	cipher@0.4.4
	colorchoice@1.0.3
	concurrent-queue@2.5.0
	constant_time_eq@0.3.1
	core-foundation-sys@0.8.7
	core-foundation@0.10.0
	core-foundation@0.9.4
	cpufeatures@0.2.16
	crc-catalog@2.4.0
	crc32fast@1.4.2
	crc@3.2.1
	crossbeam-deque@0.8.6
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.21
	crypto-common@0.1.6
	darling@0.20.10
	darling_core@0.20.10
	darling_macro@0.20.10
	deflate64@0.1.9
	deranged@0.3.11
	derive_arbitrary@1.4.1
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
	errno@0.3.10
	event-listener-strategy@0.5.3
	event-listener@5.4.0
	fastrand@2.3.0
	field-offset@0.3.6
	filetime@0.2.25
	flate2@1.0.35
	fluent-bundle@0.15.3
	fluent-langneg@0.13.0
	fluent-syntax@0.11.1
	fluent-template-macros@0.11.0
	fluent-templates@0.11.0
	flume@0.11.1
	fnv@1.0.7
	form_urlencoded@1.2.1
	fragile@2.0.0
	fs_extra@1.3.0
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-util@0.3.31
	futures@0.3.31
	gdk-pixbuf-sys@0.20.7
	gdk-pixbuf@0.20.7
	gdk4-sys@0.9.5
	gdk4@0.9.5
	generic-array@0.14.7
	getrandom@0.2.15
	gimli@0.31.1
	gio-sys@0.20.8
	gio@0.20.7
	glib-build-tools@0.20.0
	glib-macros@0.20.7
	glib-sys@0.20.7
	glib@0.20.7
	globset@0.4.15
	gobject-sys@0.20.7
	graphene-rs@0.20.7
	graphene-sys@0.20.7
	gsk4-sys@0.9.5
	gsk4@0.9.5
	gtk4-macros@0.9.5
	gtk4-sys@0.9.5
	gtk4@0.9.5
	hashbrown@0.14.5
	hashbrown@0.15.2
	heck@0.5.0
	hex@0.4.3
	hmac@0.12.1
	human-panic@2.0.2
	icu_collections@1.5.0
	icu_locid@1.5.0
	icu_locid_transform@1.5.0
	icu_locid_transform_data@1.5.0
	icu_normalizer@1.5.0
	icu_normalizer_data@1.5.0
	icu_properties@1.5.1
	icu_properties_data@1.5.0
	icu_provider@1.5.0
	icu_provider_macros@1.5.0
	ident_case@1.0.1
	idna@1.0.3
	idna_adapter@1.2.0
	ignore@0.4.23
	indexmap@2.7.0
	inout@0.1.3
	intl-memoizer@0.5.2
	intl_pluralrules@7.0.2
	is-docker@0.2.0
	is-wsl@0.4.0
	is_terminal_polyfill@1.70.1
	itoa@1.0.14
	jobserver@0.1.32
	js-sys@0.3.77
	kinda-virtual-fs@0.1.1
	lazy_static@1.5.0
	libadwaita-sys@0.7.1
	libadwaita@0.7.1
	libc@0.2.169
	libloading@0.8.6
	libredox@0.1.3
	linux-raw-sys@0.4.15
	litemap@0.7.4
	lock_api@0.4.12
	lockfree-object-pool@0.1.6
	log@0.4.25
	lzma-rs@0.3.0
	lzma-sys@0.1.20
	md-5@0.10.6
	md5-asm@0.5.2
	memchr@2.7.4
	memoffset@0.9.1
	miniz_oxide@0.8.3
	minreq@2.13.0
	mio@1.0.3
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
	object@0.36.7
	once_cell@1.20.2
	open@5.3.2
	openssl-probe@0.1.5
	ordered-stream@0.2.0
	os_info@3.9.2
	overload@0.1.1
	pango-sys@0.20.7
	pango@0.20.7
	parking@2.2.1
	pathdiff@0.2.3
	pbkdf2@0.12.2
	percent-encoding@2.3.1
	pin-project-lite@0.2.16
	pin-utils@0.1.0
	pkg-config@0.3.31
	pollster@0.4.0
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	proc-macro-crate@3.2.0
	proc-macro-hack@0.5.20+deprecated
	proc-macro2@1.0.93
	quick-xml@0.36.2
	quote@1.0.38
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	raw-window-handle@0.6.2
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.5.8
	regex-automata@0.4.9
	regex-syntax@0.8.5
	relm4-css@0.9.0
	relm4-macros@0.9.1
	relm4@0.9.1
	rfd@0.15.2
	ring@0.17.8
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc_version@0.4.1
	rustix@0.38.43
	rustls-native-certs@0.6.3
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rustls@0.21.12
	rustversion@1.0.19
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.27
	scoped-tls@1.0.1
	scopeguard@1.2.0
	sct@0.7.1
	security-framework-sys@2.14.0
	security-framework@2.11.1
	self_cell@0.10.3
	self_cell@1.1.0
	semver@1.0.24
	serde@1.0.217
	serde_derive@1.0.217
	serde_json@1.0.135
	serde_repr@0.1.19
	serde_spanned@0.6.8
	sha1@0.10.6
	sharded-slab@0.1.7
	shlex@1.3.0
	signal-hook-registry@1.4.2
	simd-adler32@0.3.7
	slab@0.4.9
	smallvec@1.13.2
	socket2@0.5.8
	spin@0.9.8
	stable_deref_trait@1.2.0
	static_assertions@1.1.0
	strsim@0.11.1
	subtle@2.6.1
	syn@2.0.96
	synstructure@0.13.1
	sysinfo@0.32.1
	system-deps@7.0.3
	tar@0.4.43
	target-lexicon@0.12.16
	tempfile@3.15.0
	thiserror-impl@1.0.69
	thiserror-impl@2.0.11
	thiserror@1.0.69
	thiserror@2.0.11
	thread_local@1.1.8
	time-core@0.1.2
	time@0.3.37
	tinystr@0.7.6
	tokio@1.43.0
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.22.22
	tracing-attributes@0.1.28
	tracing-core@0.1.33
	tracing-log@0.2.0
	tracing-subscriber@0.3.19
	tracing@0.1.41
	type-map@0.5.0
	typenum@1.17.0
	uds_windows@1.1.0
	unic-langid-impl@0.9.5
	unic-langid-macros-impl@0.9.5
	unic-langid-macros@0.9.5
	unic-langid@0.9.5
	unicode-ident@1.0.14
	untrusted@0.9.0
	url@2.5.4
	urlencoding@2.1.3
	utf16_iter@1.0.5
	utf8_iter@1.0.4
	utf8parse@0.2.2
	uuid@1.12.0
	valuable@0.1.0
	version-compare@0.2.0
	version_check@0.9.5
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.100
	wasm-bindgen-futures@0.4.50
	wasm-bindgen-macro-support@0.2.100
	wasm-bindgen-macro@0.2.100
	wasm-bindgen-shared@0.2.100
	wasm-bindgen@0.2.100
	wayland-backend@0.3.7
	wayland-client@0.31.7
	wayland-protocols@0.32.5
	wayland-scanner@0.31.5
	wayland-sys@0.31.5
	web-sys@0.3.77
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
	winnow@0.6.24
	write16@1.0.0
	writeable@0.5.5
	xattr@1.4.0
	xdg-home@1.3.0
	xz2@0.1.7
	xz@0.1.0
	yoke-derive@0.7.5
	yoke@0.7.5
	zbus@5.3.0
	zbus_macros@5.3.0
	zbus_names@4.1.1
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zerofrom-derive@0.1.5
	zerofrom@0.1.5
	zeroize@1.8.1
	zeroize_derive@1.4.2
	zerovec-derive@0.10.3
	zerovec@0.10.4
	zip@2.2.2
	zopfli@0.8.1
	zstd-safe@7.2.1
	zstd-sys@2.0.13+zstd.1.5.6
	zstd@0.13.2
	zvariant@5.2.0
	zvariant_derive@5.2.0
	zvariant_utils@3.1.0
"

declare -A GIT_CRATES=(
	[anime-game-core]='https://github.com/an-anime-team/anime-game-core;a0883c64c79ed4cf56a1bfa3c9525bf5e48af691;anime-game-core-%commit%'
	[anime-launcher-sdk]='https://github.com/an-anime-team/anime-launcher-sdk;c7ab5f1ff71c744f2c758247ac8165c09d04ac72;anime-launcher-sdk-%commit%'
)

DEPEND="
	gui-libs/libadwaita:1
	app-arch/tar
	app-arch/unzip
	app-arch/cabextract
	dev-vcs/git
	gui-libs/gtk:4
	net-misc/curl
	net-misc/iputils
	virtual/libc
	sys-auth/polkit
	media-libs/gst-plugins-good
	media-libs/gst-plugins-bad
	media-plugins/gst-plugins-libav
	media-libs/libwebp

	app-arch/xz-utils
	app-arch/7zip[symlink(-)]
	dev-libs/glib:2
	gui-libs/libadwaita:1
	x11-libs/cairo
	x11-libs/pango
"

RDEPEND="${DEPEND}"
BDEPEND="
	>=gui-libs/gtk-4.11
"

inherit cargo xdg-utils desktop

DESCRIPTION="Honkers Railway launcher for Linux with automatic anti-cheat patching"
HOMEPAGE="https://github.com/an-anime-team/honkers-launcher"
SRC_URI="
	https://github.com/an-anime-team/the-honkers-railway-launcher/archive/${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="GPL-3"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD Boost-1.0 GPL-3
	ISC MIT MPL-2.0 Unicode-3.0 ZLIB
"
SLOT="0"
KEYWORDS="~amd64"

# rust does not use *FLAGS from make.conf, silence portage warning
# update with proper path to binaries this crate installs, omit leading /
QA_FLAGS_IGNORED="usr/bin/${PN}"

src_prepare() {
	default
	# patch the .desktop file to work in non-AppImage environment
	sed -i 's/Icon=icon/Icon=moe.launcher.honkers-railway-launcher/' assets/honkers-railway-launcher.desktop || die
	sed -i 's/Exec=AppRun/Exec=honkers-railway-launcher/' assets/honkers-railway-launcher.desktop || die
	# avoid stripping by the build system, we do that ourselves in Gentoo
	sed -i 's/strip = true/strip = false/' Cargo.toml || die
}

src_install() {
	cargo_src_install
	domenu assets/honkers-railway-launcher.desktop
	newicon assets/images/icon.png moe.launcher.honkers-railway-launcher.png
}

pkg_postinst() {
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
}
