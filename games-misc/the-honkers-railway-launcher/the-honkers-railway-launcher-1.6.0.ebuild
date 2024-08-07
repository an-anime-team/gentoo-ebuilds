# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.22.0
	adler@1.0.2
	aes@0.8.4
	ahash@0.8.11
	aho-corasick@1.1.3
	allocator-api2@0.2.18
	anstream@0.6.14
	anstyle-parse@0.2.4
	anstyle-query@1.1.0
	anstyle-wincon@3.0.3
	anstyle@1.0.7
	anyhow@1.0.86
	arbitrary@1.3.2
	arc-swap@1.7.1
	arrayref@0.3.7
	arrayvec@0.7.4
	ashpd@0.8.1
	async-broadcast@0.7.1
	async-channel@2.3.1
	async-io@2.3.3
	async-lock@3.4.0
	async-process@2.2.3
	async-recursion@1.1.1
	async-signal@0.2.8
	async-task@4.7.1
	async-trait@0.1.80
	atomic-waker@1.1.2
	autocfg@1.3.0
	backtrace@0.3.73
	base64@0.12.3
	base64@0.21.7
	bitflags@1.3.2
	bitflags@2.5.0
	blake3@1.5.1
	block-buffer@0.10.4
	block@0.1.6
	blocking@1.6.1
	bstr@1.9.1
	bumpalo@3.16.0
	byteorder@1.5.0
	bytes@1.6.0
	bzip2-sys@0.1.11+1.0.8
	bzip2@0.4.4
	cached@0.51.4
	cached_proc_macro@0.21.0
	cached_proc_macro_types@0.1.1
	cairo-rs@0.19.4
	cairo-sys-rs@0.19.2
	cc@1.0.99
	cfg-expr@0.15.8
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	cipher@0.4.4
	colorchoice@1.0.1
	concurrent-queue@2.5.0
	constant_time_eq@0.3.0
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	cpufeatures@0.2.12
	crc-catalog@2.4.0
	crc32fast@1.4.2
	crc@3.2.1
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crypto-common@0.1.6
	darling@0.20.9
	darling_core@0.20.9
	darling_macro@0.20.9
	deflate64@0.1.8
	deranged@0.3.11
	derive_arbitrary@1.3.2
	digest@0.10.7
	discord-rich-presence@0.2.4
	dispatch@0.2.0
	displaydoc@0.2.4
	dns-lookup@2.0.4
	either@1.12.0
	endi@1.1.0
	enum-ordinalize-derive@4.3.1
	enum-ordinalize@4.3.0
	enumflags2@0.7.10
	enumflags2_derive@0.7.10
	equivalent@1.0.1
	errno@0.3.9
	event-listener-strategy@0.5.2
	event-listener@5.3.1
	fastrand@2.1.0
	field-offset@0.3.6
	filetime@0.2.23
	flate2@1.0.30
	fluent-bundle@0.15.3
	fluent-langneg@0.13.0
	fluent-syntax@0.11.1
	fluent-template-macros@0.9.4
	fluent-templates@0.9.4
	fluent@0.16.1
	flume@0.11.0
	fnv@1.0.7
	form_urlencoded@1.2.1
	fragile@2.0.0
	fs_extra@1.3.0
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-lite@2.3.0
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	futures@0.3.30
	gdk-pixbuf-sys@0.19.5
	gdk-pixbuf@0.19.2
	gdk4-sys@0.8.2
	gdk4@0.8.2
	generic-array@0.14.7
	getrandom@0.2.15
	gimli@0.29.0
	gio-sys@0.19.5
	gio@0.19.5
	glib-build-tools@0.19.0
	glib-macros@0.19.7
	glib-sys@0.19.5
	glib@0.19.7
	globset@0.4.14
	gobject-sys@0.19.5
	graphene-rs@0.19.2
	graphene-sys@0.19.5
	gsk4-sys@0.8.2
	gsk4@0.8.2
	gtk4-macros@0.8.2
	gtk4-sys@0.8.2
	gtk4@0.8.2
	hashbrown@0.14.5
	heck@0.5.0
	hermit-abi@0.3.9
	hermit-abi@0.4.0
	hex@0.4.3
	hmac@0.12.1
	human-panic@2.0.0
	icu_collections@1.5.0
	icu_locid@1.5.0
	icu_locid_transform@1.5.0
	icu_locid_transform_data@1.5.0
	icu_normalizer@1.5.0
	icu_normalizer_data@1.5.0
	icu_properties@1.5.0
	icu_properties_data@1.5.0
	icu_provider@1.5.0
	icu_provider_macros@1.5.0
	ident_case@1.0.1
	idna@1.0.0
	ignore@0.4.22
	indexmap@2.2.6
	inout@0.1.3
	instant@0.1.13
	intl-memoizer@0.5.2
	intl_pluralrules@7.0.2
	is-docker@0.2.0
	is-wsl@0.4.0
	is_terminal_polyfill@1.70.0
	itoa@1.0.11
	jobserver@0.1.31
	js-sys@0.3.69
	kinda-virtual-fs@0.1.1
	lazy_static@1.4.0
	libadwaita-sys@0.6.0
	libadwaita@0.6.0
	libc@0.2.155
	linux-raw-sys@0.4.14
	litemap@0.7.3
	lock_api@0.4.12
	lockfree-object-pool@0.1.6
	log@0.4.21
	lzma-rs@0.3.0
	lzma-sys@0.1.20
	malloc_buf@0.0.6
	md-5@0.10.6
	md5-asm@0.5.2
	memchr@2.7.4
	memoffset@0.9.1
	miniz_oxide@0.7.3
	minreq@2.11.2
	mio@0.8.11
	nanorand@0.7.0
	nix@0.28.0
	ntapi@0.4.1
	nu-ansi-term@0.46.0
	num-conv@0.1.0
	num_cpus@1.16.0
	objc-foundation@0.1.1
	objc@0.2.7
	objc_id@0.1.1
	object@0.36.0
	once_cell@1.19.0
	open@5.1.4
	openssl-probe@0.1.5
	ordered-stream@0.2.0
	os_info@3.8.2
	overload@0.1.1
	pango-sys@0.19.5
	pango@0.19.5
	parking@2.2.0
	pathdiff@0.2.1
	pbkdf2@0.12.2
	percent-encoding@2.3.1
	pin-project-lite@0.2.14
	pin-utils@0.1.0
	piper@0.2.3
	pkg-config@0.3.30
	polling@3.7.2
	pollster@0.3.0
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	proc-macro-crate@3.1.0
	proc-macro-hack@0.5.20+deprecated
	proc-macro2@1.0.85
	quote@1.0.36
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	raw-window-handle@0.6.2
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.4.1
	regex-automata@0.4.7
	regex-syntax@0.8.4
	relm4-macros@0.8.1
	relm4@0.8.1
	rfd@0.14.1
	ring@0.17.8
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc_version@0.4.0
	rustix@0.38.34
	rustls-native-certs@0.6.3
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rustls@0.21.12
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.23
	scopeguard@1.2.0
	sct@0.7.1
	security-framework-sys@2.11.0
	security-framework@2.11.0
	self_cell@0.10.3
	self_cell@1.0.4
	semver@1.0.23
	serde@1.0.203
	serde_derive@1.0.203
	serde_json@1.0.117
	serde_repr@0.1.19
	serde_spanned@0.6.6
	sha1@0.10.6
	sharded-slab@0.1.7
	signal-hook-registry@1.4.2
	simd-adler32@0.3.7
	slab@0.4.9
	smallvec@1.13.2
	socket2@0.5.7
	spin@0.9.8
	stable_deref_trait@1.2.0
	static_assertions@1.1.0
	strsim@0.11.1
	subtle@2.5.0
	syn@2.0.66
	synstructure@0.13.1
	sysinfo@0.30.12
	system-deps@6.2.2
	tar@0.4.41
	target-lexicon@0.12.14
	tempfile@3.10.1
	thiserror-impl@1.0.61
	thiserror@1.0.61
	thread_local@1.1.8
	time-core@0.1.2
	time@0.3.36
	tinystr@0.7.6
	tokio@1.38.0
	toml@0.8.14
	toml_datetime@0.6.6
	toml_edit@0.21.1
	toml_edit@0.22.14
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
	unicode-ident@1.0.12
	untrusted@0.9.0
	url@2.5.1
	urlencoding@2.1.3
	utf16_iter@1.0.5
	utf8_iter@1.0.4
	utf8parse@0.2.2
	uuid@0.8.2
	uuid@1.8.0
	valuable@0.1.0
	version-compare@0.2.0
	version_check@0.9.4
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.92
	wasm-bindgen-futures@0.4.42
	wasm-bindgen-macro-support@0.2.92
	wasm-bindgen-macro@0.2.92
	wasm-bindgen-shared@0.2.92
	wasm-bindgen@0.2.92
	web-sys@0.3.69
	webpki-roots@0.25.4
	whatadistro@0.1.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.8
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	wincompatlib@0.7.4
	windows-core@0.52.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.5
	windows@0.52.0
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.5
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.5
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.5
	windows_i686_gnullvm@0.52.5
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.5
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.5
	winnow@0.5.40
	winnow@0.6.13
	write16@1.0.0
	writeable@0.5.5
	xattr@1.3.1
	xdg-home@1.2.0
	xz2@0.1.7
	xz@0.1.0
	yoke-derive@0.7.4
	yoke@0.7.4
	zbus@4.3.0
	zbus_macros@4.3.0
	zbus_names@3.0.0
	zerocopy-derive@0.7.34
	zerocopy@0.7.34
	zerofrom-derive@0.1.4
	zerofrom@0.1.4
	zeroize@1.8.1
	zeroize_derive@1.4.2
	zerovec-derive@0.10.2
	zerovec@0.10.2
	zip@2.1.3
	zopfli@0.8.1
	zstd-safe@7.1.0
	zstd-sys@2.0.10+zstd.1.5.6
	zstd@0.13.1
	zvariant@4.1.1
	zvariant_derive@4.1.1
	zvariant_utils@2.0.0
"

declare -A GIT_CRATES=(
	[anime-game-core]='https://github.com/an-anime-team/anime-game-core;2bec59f6bc6a1bb3ce8f0162ca8e3bd4d349cc34;anime-game-core-%commit%'
	[anime-launcher-sdk]='https://github.com/an-anime-team/anime-launcher-sdk;1e94edd76e114ddf72347f049071e10af522827b;anime-launcher-sdk-%commit%'
)

DEPEND="
	gui-libs/libadwaita:1
	app-arch/tar
	app-arch/unzip
	dev-util/xdelta:3[lzma]
	app-arch/cabextract
	dev-vcs/git
	gui-libs/gtk:4
	net-misc/curl
	net-misc/iputils
	virtual/libc
	sys-auth/polkit

	app-arch/xz-utils
	dev-libs/glib:2
	gui-libs/libadwaita:1
	x11-libs/cairo
	x11-libs/pango
"

RDEPEND="${DEPEND}"
BDEPEND="
	>=virtual/rust-1.70
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
	ISC MIT MPL-2.0 Unicode-3.0 Unicode-DFS-2016 ZLIB
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
