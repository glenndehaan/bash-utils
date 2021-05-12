# This is the default target, which will be built when
# you invoke make
.PHONY: all
all: build cleanup

build:
	DEBEMAIL="glenn@dehaan.cloud"; \
	DEBFULLNAME="Glenn de Haan"; \
	export DEBEMAIL DEBFULLNAME; \
	cd g-password-gen-1.0; \
	dh_make --indep --createorig -y; \
	debuild -us -uc --lintian-opts --profile debian

.PHONY: setup
setup:
	DEBEMAIL="glenn@dehaan.cloud"; \
	DEBFULLNAME="Glenn de Haan"; \
	export DEBEMAIL DEBFULLNAME; \
	cd g-password-gen-1.0; \
	dh_make --indep --createorig -y

.PHONY: cleanup
cleanup:
	rm *.tar.xz
	rm *.build
	rm *.changes
	rm *.buildinfo
	rm *.dsc
	rm -rf g-password-gen-1.0/debian/.debhelper
	rm -rf g-password-gen-1.0/debian/g-password-gen
	rm g-password-gen-1.0/debian/debhelper-build-stamp
	rm g-password-gen-1.0/debian/files
	rm g-password-gen-1.0/debian/g-password-gen.substvars
