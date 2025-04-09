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
	allocator-api2@0.2.21
	anstream@0.6.18
	anstyle-parse@0.2.6
	anstyle-query@1.1.2
	anstyle-wincon@3.0.7
	anstyle@1.0.10
	anyhow@1.0.97
	arbitrary@1.4.1
	arrayref@0.3.9
	arrayvec@0.7.6
	ashpd@0.11.0
	async-broadcast@0.7.2
	async-recursion@1.1.1
	async-trait@0.1.88
	autocfg@1.4.0
	backtrace@0.3.74
	base64@0.12.3
	base64@0.21.7
	bitflags@2.9.0
	blake3@1.8.1
	block-buffer@0.10.4
	block2@0.6.0
	bstr@1.11.3
	bumpalo@3.17.0
	byteorder@1.5.0
	bytes@1.10.1
	bzip2-sys@0.1.13+1.0.8
	bzip2@0.4.4
	bzip2@0.5.2
	cached@0.53.1
	cached@0.55.1
	cached_proc_macro@0.23.0
	cached_proc_macro@0.24.0
	cached_proc_macro_types@0.1.1
	cairo-rs@0.20.7
	cairo-sys-rs@0.20.7
	cc@1.2.18
	cfg-expr@0.17.2
	cfg-if@1.0.0
	cfg_aliases@0.2.1
	cipher@0.4.4
	colorchoice@1.0.3
	concurrent-queue@2.5.0
	constant_time_eq@0.3.1
	core-foundation-sys@0.8.7
	core-foundation@0.9.4
	cpufeatures@0.2.17
	crc-catalog@2.4.0
	crc32fast@1.4.2
	crc@3.2.1
	crossbeam-deque@0.8.6
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.21
	crypto-common@0.1.6
	darling@0.20.11
	darling_core@0.20.11
	darling_macro@0.20.11
	deflate64@0.1.9
	deranged@0.4.0
	derive_arbitrary@1.4.1
	digest@0.10.7
	dispatch2@0.2.0
	displaydoc@0.2.5
	dns-lookup@2.0.4
	endi@1.1.0
	enum-ordinalize-derive@4.3.1
	enum-ordinalize@4.3.0
	enumflags2@0.7.11
	enumflags2_derive@0.7.11
	equivalent@1.0.2
	errno@0.3.11
	event-listener-strategy@0.5.4
	event-listener@5.4.0
	fastrand@2.3.0
	field-offset@0.3.6
	filetime@0.2.25
	flate2@1.1.1
	fluent-bundle@0.15.3
	fluent-langneg@0.13.0
	fluent-syntax@0.11.1
	fluent-template-macros@0.13.0
	fluent-templates@0.13.0
	flume@0.11.1
	fnv@1.0.7
	form_urlencoded@1.2.1
	fragile@2.0.1
	fs_extra@1.3.0
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-lite@2.6.0
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-util@0.3.31
	futures@0.3.31
	gdk-pixbuf-sys@0.20.7
	gdk-pixbuf@0.20.9
	gdk4-sys@0.9.6
	gdk4@0.9.6
	generic-array@0.14.7
	getrandom@0.2.15
	getrandom@0.3.2
	gimli@0.31.1
	gio-sys@0.20.9
	gio@0.20.9
	glib-build-tools@0.20.0
	glib-macros@0.20.7
	glib-sys@0.20.9
	glib@0.20.9
	globset@0.4.16
	gobject-sys@0.20.9
	graphene-rs@0.20.9
	graphene-sys@0.20.7
	gsk4-sys@0.9.6
	gsk4@0.9.6
	gtk4-macros@0.9.5
	gtk4-sys@0.9.6
	gtk4@0.9.6
	hashbrown@0.14.5
	hashbrown@0.15.2
	heck@0.5.0
	hex@0.4.3
	hmac@0.12.1
	human-panic@2.0.2
	icu_collections@1.5.0
	icu_locid@1.5.0
	icu_locid_transform@1.5.0
	icu_locid_transform_data@1.5.1
	icu_normalizer@1.5.0
	icu_normalizer_data@1.5.1
	icu_properties@1.5.1
	icu_properties_data@1.5.1
	icu_provider@1.5.0
	icu_provider_macros@1.5.0
	ident_case@1.0.1
	idna@1.0.3
	idna_adapter@1.2.0
	ignore@0.4.23
	indexmap@2.9.0
	inout@0.1.4
	intl-memoizer@0.5.2
	intl_pluralrules@7.0.2
	is-docker@0.2.0
	is-wsl@0.4.0
	is_terminal_polyfill@1.70.1
	itoa@1.0.15
	jobserver@0.1.33
	js-sys@0.3.77
	kinda-virtual-fs@0.1.1
	lazy_static@1.5.0
	libadwaita-sys@0.7.2
	libadwaita@0.7.2
	libc@0.2.171
	libredox@0.1.3
	linux-raw-sys@0.9.3
	litemap@0.7.5
	lock_api@0.4.12
	lockfree-object-pool@0.1.6
	log@0.4.27
	lzma-rs@0.3.0
	lzma-sys@0.1.20
	md-5@0.10.6
	md5-asm@0.5.2
	memchr@2.7.4
	memoffset@0.9.1
	miniz_oxide@0.8.7
	minreq@2.13.3
	mio@1.0.3
	nanorand@0.7.0
	nix@0.29.0
	ntapi@0.4.1
	nu-ansi-term@0.46.0
	num-conv@0.1.0
	objc2-app-kit@0.3.0
	objc2-core-foundation@0.3.0
	objc2-encode@4.1.0
	objc2-foundation@0.3.0
	objc2@0.6.0
	object@0.36.7
	once_cell@1.21.3
	open@5.3.2
	openssl-probe@0.1.6
	ordered-stream@0.2.0
	os_info@3.10.0
	overload@0.1.1
	pango-sys@0.20.9
	pango@0.20.9
	parking@2.2.1
	pathdiff@0.2.3
	pbkdf2@0.12.2
	percent-encoding@2.3.1
	pin-project-lite@0.2.16
	pin-utils@0.1.0
	pkg-config@0.3.32
	pollster@0.4.0
	powerfmt@0.2.0
	ppv-lite86@0.2.21
	proc-macro-crate@3.3.0
	proc-macro-hack@0.5.20+deprecated
	proc-macro2@1.0.94
	quote@1.0.40
	r-efi@5.2.0
	rand@0.9.0
	rand_chacha@0.9.0
	rand_core@0.9.3
	raw-window-handle@0.6.2
	redox_syscall@0.5.11
	regex-automata@0.4.9
	regex-syntax@0.8.5
	relm4-css@0.9.0
	relm4-macros@0.9.1
	relm4@0.9.1
	rfd@0.15.3
	ring@0.17.14
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc_version@0.4.1
	rustix@1.0.5
	rustls-native-certs@0.6.3
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rustls@0.21.12
	rustversion@1.0.20
	ryu@1.0.20
	same-file@1.0.6
	schannel@0.1.27
	scopeguard@1.2.0
	sct@0.7.1
	security-framework-sys@2.14.0
	security-framework@2.11.1
	self_cell@0.10.3
	self_cell@1.1.0
	semver@1.0.26
	serde@1.0.219
	serde_derive@1.0.219
	serde_json@1.0.140
	serde_repr@0.1.20
	serde_spanned@0.6.8
	sha1@0.10.6
	sharded-slab@0.1.7
	shlex@1.3.0
	signal-hook-registry@1.4.2
	simd-adler32@0.3.7
	slab@0.4.9
	smallvec@1.15.0
	socket2@0.5.9
	spin@0.9.8
	stable_deref_trait@1.2.0
	static_assertions@1.1.0
	strsim@0.11.1
	subtle@2.6.1
	syn@2.0.100
	synstructure@0.13.1
	sysinfo@0.34.2
	system-deps@7.0.3
	tar@0.4.44
	target-lexicon@0.12.16
	tempfile@3.19.1
	thiserror-impl@1.0.69
	thiserror-impl@2.0.12
	thiserror@1.0.69
	thiserror@2.0.12
	thread_local@1.1.8
	time-core@0.1.4
	time@0.3.41
	tinystr@0.7.6
	tokio@1.44.2
	toml@0.8.20
	toml_datetime@0.6.8
	toml_edit@0.22.24
	tracing-attributes@0.1.28
	tracing-core@0.1.33
	tracing-log@0.2.0
	tracing-subscriber@0.3.19
	tracing@0.1.41
	type-map@0.5.0
	typenum@1.18.0
	uds_windows@1.1.0
	unic-langid-impl@0.9.5
	unic-langid-macros-impl@0.9.5
	unic-langid-macros@0.9.5
	unic-langid@0.9.5
	unicode-ident@1.0.18
	untrusted@0.9.0
	url@2.5.4
	urlencoding@2.1.3
	utf16_iter@1.0.5
	utf8_iter@1.0.4
	utf8parse@0.2.2
	uuid@1.16.0
	valuable@0.1.1
	version-compare@0.2.0
	version_check@0.9.5
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasi@0.14.2+wasi-0.2.4
	wasm-bindgen-backend@0.2.100
	wasm-bindgen-futures@0.4.50
	wasm-bindgen-macro-support@0.2.100
	wasm-bindgen-macro@0.2.100
	wasm-bindgen-shared@0.2.100
	wasm-bindgen@0.2.100
	web-sys@0.3.77
	web-time@1.1.0
	webpki-roots@0.25.4
	whatadistro@0.1.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	wincompatlib@0.7.7
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
	winnow@0.7.6
	wit-bindgen-rt@0.39.0
	write16@1.0.0
	writeable@0.5.5
	xattr@1.5.0
	xdg-home@1.3.0
	xz2@0.1.7
	xz@0.1.0
	yoke-derive@0.7.5
	yoke@0.7.5
	zbus@5.5.0
	zbus_macros@5.5.0
	zbus_names@4.2.0
	zerocopy-derive@0.7.35
	zerocopy-derive@0.8.24
	zerocopy@0.7.35
	zerocopy@0.8.24
	zerofrom-derive@0.1.6
	zerofrom@0.1.6
	zeroize@1.8.1
	zeroize_derive@1.4.2
	zerovec-derive@0.10.3
	zerovec@0.10.4
	zip@2.6.1
	zopfli@0.8.1
	zstd-safe@7.2.4
	zstd-sys@2.0.15+zstd.1.5.7
	zstd@0.13.3
	zvariant@5.4.0
	zvariant_derive@5.4.0
	zvariant_utils@3.2.0
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
	[anime-game-core]='https://github.com/an-anime-team/anime-game-core;8f0f582088c787d1735c2e124866282c667dcd5a;anime-game-core-%commit%'
	[anime-launcher-sdk]='https://github.com/an-anime-team/anime-launcher-sdk;7fe575238e203fc7fc8ea58fd2adb0bea41e4083;anime-launcher-sdk-%commit%'
)

RDEPEND="
	${DEPEND}
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
	ISC MIT MPL-2.0 Unicode-3.0 ZLIB
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
