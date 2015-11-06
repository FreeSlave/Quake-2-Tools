Fork of Quake II compiler tools with support for map format 220 used by Jackhammer level editor.

# Building from sources on Linux

Building all compilers:

    (cd bsp/qbsp3 && make)
    (cd bsp/qrad3 && make)
    (cd bsp/qvis3 && make)

There's also script to make all compilers in one command:

    sh make_all.sh

Also it supports command line parameters:

    sh make_all.sh clean

Building x86_64 binaries on x86 host (requires gcc-multilib to be installed):

    ./make_all.sh USER_FLAGS=-m64 BINDIR=../bin-m64 BUILDDIR=../build-m64

Building x86 binaries on x86_64 host (requires gcc-multilib to be installed):

    ./make_all.sh USER_FLAGS=-m32 BINDIR=../bin-m32 BUILDDIR=../build-m32

By default binaries are build for your host architecture.
    
# Original README.txt by id Software

Fri Feb 17 11:10:50 CST 2006

If you are getting this file long after our initial release,
chances are the source is quite outdated. See the release
announcement below.

TTimo

id Software releases GtkRadiant source code under GPL
=====================================================

Following last summer's release of Quake III Arena source code and tools
under the GPL license, id is now placing GtkRadiant and q3map2 under GPL
license. We are also providing in this release a number of Quake II
tools that never made it under GPL when we packaged Quake II source code.

GtkRadiant [1] is the heavily modified version of QERadiant and
Q3Radiant ( id's level editors used during Quake II and Quake III Arena
development ). It runs on Microsoft Windows platforms, GNU/Linux, MacOS
X, and supports level editing for many id technology games [2].

A tarball of the initial release is available from our ftp server [3],
and the development website [4] now holds a subversion repository with
the GPL code. We expect development on the editor to continue as usual,
and hope that many new developers will join us [5] :-)

[1] http://www.qeradiant.com/
[2] http://www.qeradiant.com/?data=sitemap#games
[3] ftp://ftp.idsoftware.com/idstuff/source/GtkRadiant-GPL.zip
[4] http://zerowing.idsoftware.com/
[5] http://www.qeradiant.com/wikifaq/index.php?How%20to%20reach%20the%20developers
