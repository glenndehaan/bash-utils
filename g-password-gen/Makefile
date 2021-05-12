SUBDIRS := $(sort $(wildcard */.))

# This is the default target, which will be built when
# you invoke make
.PHONY: all $(SUBDIRS)
all: $(SUBDIRS)

$(SUBDIRS):
	DEBEMAIL="glenn@dehaan.cloud"; \
	DEBFULLNAME="Glenn de Haan"; \
	export DEBEMAIL DEBFULLNAME; \
	cd $@; \
	dh_make --indep --createorig -y; \
	debuild -us -uc --lintian-opts --profile debian
	rm *.tar.xz
	rm *.build
	rm *.changes
	rm *.buildinfo
	rm *.dsc
	rm -rf $@/debian/.debhelper
	rm -rf $@/debian/g-password-gen
	rm $@/debian/debhelper-build-stamp
	rm $@/debian/files
	rm $@/debian/g-password-gen.substvars
