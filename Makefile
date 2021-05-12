SUBDIRS := $(sort $(wildcard */.))

all: $(SUBDIRS)
$(SUBDIRS):
	-@[ -e "$@/Makefile" ] && $(MAKE) -C $@ && mv $@/*.deb ./dist/

.PHONY: all $(SUBDIRS)
