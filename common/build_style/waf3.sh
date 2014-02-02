#
# This helper is for templates using WAF with python3 to build/install.
#
do_configure() {
	PYTHON=python3 python3 waf configure --prefix=/usr ${configure_args}
}

do_build() {
	PYTHON=python3 python3 waf build ${make_build_args}
}

do_install() {
	make_install_args+=" --destdir=$DESTDIR"

	PYTHON=python3 python3 waf install ${make_install_args}
}
