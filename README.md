tagcopy
==========

## About
tagcopy exists because I was converting a bunch of music files with vlc.  When vlc converts a music file, it doesn't copy the tags(artist/songname/etc.) over to the new file.  So I made this simple c++ program to do it as an extra step after the conversion.  The authors of [taglib](http://taglib.org/) did all of the hard work.  I just link to taglib and call a few simple functions.

## Build
    > make all
This `make all` should build an executable called tagcopy.

### Dependencies
 * taglib
     - gentoo: emerge media-libs/taglib
     - ubuntu: apt install libtag1-dev

## Installation
    > make install
Running `make install` will copy the binary to `/usr/local/bin`.  This should already be in your path.

## Uninstallation
    > make uninstall
Running `make uninstall` will `rm /usr/local/bin/tagcopy`.

## Usage
    > tagcopy FROMFILE TOFILE
There is basically no protections in the code right now.  The code will segfault if it can't read the files.  So do some tests and make sure of the following:
 1. That taglib can read your files.
 2. That both of your files exist and have permissions to read FROMFILE and write TOFILE.
 3. That tagcopy doesn't clobber TOFILE for some reason.  (I haven't seen it do this, but run a test anyway.)
