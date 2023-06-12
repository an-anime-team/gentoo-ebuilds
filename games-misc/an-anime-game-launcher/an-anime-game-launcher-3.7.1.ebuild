# Copyright 2023 Pascal Jager
# Distributed under the terms of the GNU General Public License v3

EAPI=8

CRATES="
	addr2line-0.19.0
	adler-1.0.2
	aes-0.8.2
	aho-corasick-0.7.20
	aho-corasick-1.0.2
	anyhow-1.0.71
	arc-swap-1.6.0
	ashpd-0.4.0
	async-broadcast-0.5.1
	async-channel-1.8.0
	async-executor-1.5.1
	async-fs-1.6.0
	async-global-executor-2.3.1
	async-io-1.13.0
	async-lock-2.7.0
	async-recursion-1.0.4
	async-std-1.12.0
	async-task-4.4.0
	async-trait-0.1.68
	atomic-waker-1.1.1
	autocfg-1.1.0
	backtrace-0.3.67
	base64-0.12.3
	base64-0.21.2
	base64ct-1.6.0
	bitflags-1.3.2
	block-0.1.6
	block-buffer-0.10.4
	blocking-1.3.1
	bstr-1.5.0
	bumpalo-3.13.0
	byteorder-1.4.3
	bzip2-0.4.4
	bzip2-sys-0.1.11+1.0.8
	cached-0.44.0
	cached_proc_macro-0.17.0
	cached_proc_macro_types-0.1.0
	cairo-rs-0.17.10
	cairo-sys-rs-0.17.10
	cc-1.0.79
	cfg-expr-0.15.2
	cfg-if-1.0.0
	cipher-0.4.4
	concurrent-queue-2.2.0
	constant_time_eq-0.1.5
	core-foundation-0.9.3
	core-foundation-sys-0.8.4
	cpufeatures-0.2.7
	crc32fast-1.3.2
	crossbeam-channel-0.5.8
	crossbeam-deque-0.8.3
	crossbeam-epoch-0.9.14
	crossbeam-utils-0.8.15
	crypto-common-0.1.6
	darling-0.14.4
	darling_core-0.14.4
	darling_macro-0.14.4
	derivative-2.2.0
	digest-0.10.7
	discord-rich-presence-0.2.3
	dispatch-0.2.0
	displaydoc-0.2.4
	dns-lookup-2.0.2
	doc-comment-0.3.3
	either-1.8.1
	enum-ordinalize-3.1.13
	enumflags2-0.7.7
	enumflags2_derive-0.7.7
	errno-0.3.1
	errno-dragonfly-0.1.2
	event-listener-2.5.3
	fastrand-1.9.0
	field-offset-0.3.6
	filetime-0.2.21
	flate2-1.0.26
	fluent-0.16.0
	fluent-bundle-0.15.2
	fluent-langneg-0.13.0
	fluent-syntax-0.11.0
	fluent-template-macros-0.8.0
	fluent-templates-0.8.0
	flume-0.10.14
	fnv-1.0.7
	form_urlencoded-1.2.0
	fragile-2.0.0
	fs_extra-1.3.0
	futures-0.3.28
	futures-channel-0.3.28
	futures-core-0.3.28
	futures-executor-0.3.28
	futures-io-0.3.28
	futures-lite-1.13.0
	futures-macro-0.3.28
	futures-sink-0.3.28
	futures-task-0.3.28
	futures-util-0.3.28
	gdk-pixbuf-0.17.10
	gdk-pixbuf-sys-0.17.10
	gdk4-0.6.3
	gdk4-sys-0.6.3
	generic-array-0.14.7
	getrandom-0.2.10
	gimli-0.27.2
	gio-0.17.10
	gio-sys-0.17.10
	glib-0.17.10
	glib-build-tools-0.17.10
	glib-macros-0.17.10
	glib-sys-0.17.10
	globset-0.4.10
	gloo-timers-0.2.6
	gobject-sys-0.17.10
	graphene-rs-0.17.10
	graphene-sys-0.17.10
	gsk4-0.6.3
	gsk4-sys-0.6.3
	gtk4-0.6.6
	gtk4-macros-0.6.6
	gtk4-sys-0.6.3
	hashbrown-0.12.3
	hashbrown-0.13.2
	heck-0.4.1
	hermit-abi-0.2.6
	hermit-abi-0.3.1
	hex-0.4.3
	hmac-0.12.1
	ident_case-1.0.1
	idna-0.4.0
	ignore-0.4.20
	indexmap-1.9.3
	inout-0.1.3
	instant-0.1.12
	intl-memoizer-0.5.1
	intl_pluralrules-7.0.2
	io-lifetimes-1.0.11
	is-docker-0.2.0
	is-wsl-0.4.0
	itoa-1.0.6
	jobserver-0.1.26
	js-sys-0.3.63
	kinda-virtual-fs-0.1.1
	kv-log-macro-1.0.7
	lazy_static-1.4.0
	libadwaita-0.4.4
	libadwaita-sys-0.4.4
	libc-0.2.146
	linux-raw-sys-0.3.8
	lock_api-0.4.10
	log-0.4.19
	lzma-sys-0.1.20
	malloc_buf-0.0.6
	md-5-0.10.5
	md5-asm-0.5.0
	memchr-2.5.0
	memoffset-0.7.1
	memoffset-0.8.0
	memoffset-0.9.0
	miniz_oxide-0.6.2
	miniz_oxide-0.7.1
	minreq-2.8.1
	nanorand-0.7.0
	nix-0.26.2
	ntapi-0.4.1
	nu-ansi-term-0.46.0
	num-bigint-0.4.3
	num-integer-0.1.45
	num-traits-0.2.15
	num_cpus-1.15.0
	objc-0.2.7
	objc-foundation-0.1.1
	objc_id-0.1.1
	object-0.30.4
	once_cell-1.18.0
	open-4.1.0
	openssl-probe-0.1.5
	ordered-stream-0.2.0
	overload-0.1.1
	pango-0.17.10
	pango-sys-0.17.10
	parking-2.1.0
	parking_lot-0.12.1
	parking_lot_core-0.9.8
	password-hash-0.4.2
	pathdiff-0.2.1
	pbkdf2-0.11.0
	percent-encoding-2.3.0
	pin-project-1.1.0
	pin-project-internal-1.1.0
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	pkg-config-0.3.27
	polling-2.8.0
	pollster-0.3.0
	ppv-lite86-0.2.17
	proc-macro-crate-1.3.1
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro-hack-0.5.20+deprecated
	proc-macro2-1.0.60
	quote-1.0.28
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.4
	raw-window-handle-0.5.2
	rayon-1.7.0
	rayon-core-1.11.0
	redox_syscall-0.2.16
	redox_syscall-0.3.5
	regex-1.8.4
	regex-syntax-0.7.2
	relm4-0.6.0
	relm4-macros-0.6.0
	rfd-0.11.4
	ring-0.16.20
	rustc-demangle-0.1.23
	rustc-hash-1.1.0
	rustc_version-0.4.0
	rustix-0.37.19
	rustls-0.20.8
	rustls-native-certs-0.6.2
	rustls-pemfile-1.0.2
	ryu-1.0.13
	same-file-1.0.6
	schannel-0.1.21
	scopeguard-1.1.0
	sct-0.7.0
	security-framework-2.9.1
	security-framework-sys-2.9.0
	self_cell-0.10.2
	semver-1.0.17
	serde-1.0.164
	serde_derive-1.0.164
	serde_json-1.0.96
	serde_repr-0.1.12
	serde_spanned-0.6.2
	sha1-0.10.5
	sha2-0.10.6
	sharded-slab-0.1.4
	slab-0.4.8
	smallvec-1.10.0
	snafu-0.7.4
	snafu-derive-0.7.4
	socket2-0.4.9
	socket2-0.5.3
	spin-0.5.2
	spin-0.9.8
	static_assertions-1.1.0
	strsim-0.10.0
	subtle-2.5.0
	syn-1.0.109
	syn-2.0.18
	sysinfo-0.29.2
	system-deps-6.1.0
	tar-0.4.38
	target-lexicon-0.12.7
	tempfile-3.6.0
	thiserror-1.0.40
	thiserror-impl-1.0.40
	thread_local-1.1.7
	time-0.3.22
	time-core-0.1.1
	tinystr-0.7.1
	tinyvec-1.6.0
	tinyvec_macros-0.1.1
	tokio-1.28.2
	tokio-macros-2.1.0
	toml-0.7.4
	toml_datetime-0.6.2
	toml_edit-0.19.10
	tracing-0.1.37
	tracing-attributes-0.1.24
	tracing-core-0.1.31
	tracing-log-0.1.3
	tracing-subscriber-0.3.17
	type-map-0.4.0
	typenum-1.16.0
	uds_windows-1.0.2
	unic-langid-0.9.1
	unic-langid-impl-0.9.1
	unic-langid-macros-0.9.1
	unic-langid-macros-impl-0.9.1
	unicode-bidi-0.3.13
	unicode-ident-1.0.9
	unicode-normalization-0.1.22
	untrusted-0.7.1
	url-2.4.0
	urlencoding-2.1.2
	uuid-0.8.2
	valuable-0.1.0
	value-bag-1.4.0
	version-compare-0.1.1
	version_check-0.9.4
	waker-fn-1.1.0
	walkdir-2.3.3
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.86
	wasm-bindgen-backend-0.2.86
	wasm-bindgen-futures-0.4.36
	wasm-bindgen-macro-0.2.86
	wasm-bindgen-macro-support-0.2.86
	wasm-bindgen-shared-0.2.86
	web-sys-0.3.63
	webpki-0.22.0
	webpki-roots-0.22.6
	whatadistro-0.1.0
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	wincompatlib-0.7.2
	windows-0.44.0
	windows-sys-0.42.0
	windows-sys-0.48.0
	windows-targets-0.42.2
	windows-targets-0.48.0
	windows_aarch64_gnullvm-0.42.2
	windows_aarch64_gnullvm-0.48.0
	windows_aarch64_msvc-0.42.2
	windows_aarch64_msvc-0.48.0
	windows_i686_gnu-0.42.2
	windows_i686_gnu-0.48.0
	windows_i686_msvc-0.42.2
	windows_i686_msvc-0.48.0
	windows_x86_64_gnu-0.42.2
	windows_x86_64_gnu-0.48.0
	windows_x86_64_gnullvm-0.42.2
	windows_x86_64_gnullvm-0.48.0
	windows_x86_64_msvc-0.42.2
	windows_x86_64_msvc-0.48.0
	winnow-0.4.6
	xattr-0.2.3
	xdg-home-1.0.0
	xz-0.1.0
	xz2-0.1.7
	zbus-3.12.0
	zbus_macros-3.12.0
	zbus_names-2.5.1
	zip-0.6.6
	zstd-0.11.2+zstd.1.5.2
	zstd-safe-5.0.2+zstd.1.5.2
	zstd-sys-2.0.8+zstd.1.5.5
	zvariant-3.13.0
	zvariant_derive-3.13.0
	zvariant_utils-1.0.0
"

DEPEND="
	gui-libs/libadwaita
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
"

declare -A GIT_CRATES=(
	   [anime-launcher-sdk]="https://github.com/an-anime-team/anime-launcher-sdk;1.7.2"
	   [anime-game-core]="https://github.com/an-anime-team/anime-game-core;1.12.1"
)

RDEPEND="
	${DEPEND}
	!!games-misc/an-anime-game-launcher-gtk
"

BDEPEND=">=virtual/rust-1.63"

inherit cargo xdg-utils desktop

DESCRIPTION="Anime Game launcher with automatic anti-cheat patching"
HOMEPAGE="https://github.com/an-anime-team/an-anime-game-launcher"
SRC_URI="
	https://github.com/an-anime-team/an-anime-game-launcher/archive/${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris)
"

LICENSE="GPL-3"
# Dependent crate licenses
LICENSE+=" 0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD Boost-1.0 CC0-1.0 GPL-3 ISC MIT MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB"
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
