# Call taglib-config to get the flags on your system

# -I/usr/include/taglib
build_flags := $(shell taglib-config --cflags)
# -L/usr/lib64 -ltag
link_flags := $(shell taglib-config --libs)

all: tagcopy

tagcopy: tagcopy.o
	${CXX} -o $@ $< ${link_flags}

tagcopy.o: tagcopy.cpp
	${CXX} -c -o $@ $< ${build_flags}

install: all
	cp tagcopy /usr/local/bin/

uninstall:
	rm /usr/local/bin/tagcopy

clean:
	-rm tagcopy.o tagcopy


.PHONY: all install uninstall clean
