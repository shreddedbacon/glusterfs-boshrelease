#!/bin/bash

if [ ! -d .downloads ]
then
  mkdir -p .downloads
fi

curl -J -L -o .downloads/bison-3.2.4.tar.gz https://ftp.gnu.org/gnu/bison/bison-3.2.4.tar.gz
curl -J -L -o .downloads/expat-2.2.6.tar.bz2 https://github.com/libexpat/libexpat/releases/download/R_2_2_6/expat-2.2.6.tar.bz2
curl -J -L -o .downloads/flex-2.5.33.tar.gz http://download.nust.na/pub2/openpkg1/sources/DST/flex/flex-2.5.33.tar.gz
curl -J -L -o .downloads/intltool-0.51.0.tar.gz https://src.fedoraproject.org/lookaside/pkgs/intltool/intltool-0.51.0.tar.gz/12e517cac2b57a0121cda351570f1e63/intltool-0.51.0.tar.gz
curl -J -L -o .downloads/libaio-0.3.111.tar.gz https://src.fedoraproject.org/lookaside/pkgs/libaio/libaio-0.3.111.tar.gz/sha512/440f2b62f99ca2e72ffc8c2c04b4779a1a7cf24a8ba2a30b34d18b4ee77630a2078610fe8c435559f81a5c3bfa93049bd53d77464a0da8267833fbde3f40ceeb/libaio-0.3.111.tar.gz
curl -J -L -o .downloads/libnl-3.4.0.tar.gz https://github.com/thom311/libnl/releases/download/libnl3_4_0/libnl-3.4.0.tar.gz
curl -J -L -o .downloads/libibverbs-1.2.1.tar.gz https://www.openfabrics.org/downloads/verbs/libibverbs-1.2.1.tar.gz
curl -J -L -o .downloads/librdmacm-1.1.0.tar.gz https://www.openfabrics.org/downloads/rdmacm/librdmacm-1.1.0.tar.gz
curl -J -L -o .downloads/userspace-rcu-0.10.2.tar.bz2 https://lttng.org/files/urcu/userspace-rcu-0.10.2.tar.bz2
curl -J -L -o .downloads/XML-Parser-2.44.tar.gz https://www.cpan.org/modules/by-module/XML/XML-Parser-2.44.tar.gz
curl -J -L -o .downloads/LVM2.2.02.183.tgz https://src.fedoraproject.org/lookaside/extras/lvm2/LVM2.2.02.183.tgz/sha512/3947523c6b0862ada40677ed171ed0cf95e070119e377296fc5ccb153e9c4212d34c0b16a887dbd68ccf265525345dabfed2aa59fb3604555429a7e2ecfff4d7/LVM2.2.02.183.tgz
curl -J -L -o .downloads/autoconf-2.69.tar.gz https://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz
curl -J -L -o .downloads/automake-1.16.1.tar.gz https://ftp.gnu.org/gnu/automake/automake-1.16.1.tar.gz
curl -J -L -o .downloads/libtool-2.4.6.tar.gz https://ftp.gnu.org/gnu/libtool/libtool-2.4.6.tar.gz
curl -J -L -o .downloads/glusterfs-5.3.tar.gz https://download.gluster.org/pub/gluster/glusterfs/5/5.3/glusterfs-5.3.tar.gz
curl -J -L -o .downloads/Python-3.4.0.tgz https://www.python.org/ftp/python/3.4.0/Python-3.4.0.tgz

bosh add-blob .downloads/bison-3.2.4.tar.gz gluster-build-deps/bison-3.2.4.tar.gz
bosh add-blob .downloads/expat-2.2.6.tar.bz2 gluster-build-deps/expat-2.2.6.tar.bz2
bosh add-blob .downloads/flex-2.5.33.tar.gz gluster-build-deps/flex-2.5.33.tar.gz
bosh add-blob .downloads/intltool-0.51.0.tar.gz gluster-build-deps/intltool-0.51.0.tar.gz
bosh add-blob .downloads/libaio-0.3.111.tar.gz gluster-build-deps/libaio-0.3.111.tar.gz
bosh add-blob .downloads/libnl-3.4.0.tar.gz gluster-build-deps/libnl-3.4.0.tar.gz
bosh add-blob .downloads/libibverbs-1.2.1.tar.gz gluster-build-deps/libibverbs-1.2.1.tar.gz
bosh add-blob .downloads/librdmacm-1.1.0.tar.gz gluster-build-deps/librdmacm-1.1.0.tar.gz
bosh add-blob .downloads/userspace-rcu-0.10.2.tar.bz2 gluster-build-deps/userspace-rcu-0.10.2.tar.bz2
bosh add-blob .downloads/XML-Parser-2.44.tar.gz gluster-build-deps/XML-Parser-2.44.tar.gz
bosh add-blob .downloads/LVM2.2.02.183.tgz gluster-build-deps/LVM2.2.02.183.tgz
bosh add-blob .downloads/autoconf-2.69.tar.gz gluster-build-tools/autoconf-2.69.tar.gz
bosh add-blob .downloads/automake-1.16.1.tar.gz gluster-build-tools/automake-1.16.1.tar.gz
bosh add-blob .downloads/libtool-2.4.6.tar.gz gluster-build-tools/libtool-2.4.6.tar.gz
bosh add-blob .downloads/glusterfs-5.3.tar.gz glusterfs/glusterfs-5.3.tar.gz
bosh add-blob .downloads/Python-3.4.0.tgz python/Python-3.4.0.tgz
