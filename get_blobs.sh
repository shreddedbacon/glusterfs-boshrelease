#!/bin/bash

if [ ! -d .downloads ]
then
  mkdir -p .downloads
fi

####################
#
# Should look to replace these with source versions at some stage instead of .debs
#
BUILD_DEP_URLS="https://ftp.gnu.org/gnu/bison/bison-3.2.4.tar.gz
https://github.com/libexpat/libexpat/releases/download/R_2_2_6/expat-2.2.6.tar.bz2
http://download.nust.na/pub2/openpkg1/sources/DST/flex/flex-2.5.33.tar.gz
https://src.fedoraproject.org/lookaside/pkgs/intltool/intltool-0.51.0.tar.gz/12e517cac2b57a0121cda351570f1e63/intltool-0.51.0.tar.gz
https://src.fedoraproject.org/lookaside/pkgs/libaio/libaio-0.3.111.tar.gz/sha512/440f2b62f99ca2e72ffc8c2c04b4779a1a7cf24a8ba2a30b34d18b4ee77630a2078610fe8c435559f81a5c3bfa93049bd53d77464a0da8267833fbde3f40ceeb/libaio-0.3.111.tar.gz
https://github.com/thom311/libnl/releases/download/libnl3_4_0/libnl-3.4.0.tar.gz
https://www.openfabrics.org/downloads/verbs/libibverbs-1.2.1.tar.gz
https://www.openfabrics.org/downloads/rdmacm/librdmacm-1.1.0.tar.gz
https://lttng.org/files/urcu/userspace-rcu-0.10.2.tar.bz2
https://www.cpan.org/modules/by-module/XML/XML-Parser-2.44.tar.gz
https://src.fedoraproject.org/lookaside/extras/lvm2/LVM2.2.02.130.tgz/e7ae07e413120713549cc6dd2a558c75/LVM2.2.02.130.tgz
http://download.savannah.gnu.org/releases/acl/acl-2.2.52.src.tar.gz
http://download.savannah.gnu.org/releases/attr/attr-2.4.47.src.tar.gz
https://pkgconfig.freedesktop.org/releases/pkg-config-0.29.1.tar.gz
https://ftp.gnu.org/pub/gnu/gettext/gettext-0.19.8.tar.gz
https://sqlite.org/2018/sqlite-autoconf-3220000.tar.gz
http://xmlsoft.org/sources/libxml2-2.9.8.tar.gz
"
BUILD_TOOL_URLS="https://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz
https://ftp.gnu.org/gnu/automake/automake-1.16.1.tar.gz
https://ftp.gnu.org/gnu/libtool/libtool-2.4.6.tar.gz
"

for i in $BUILD_DEP_URLS
do
  if [ ! -e ".downloads/${i##*/}" ]
  then
    curl -J -L -o .downloads/${i##*/} $i
    bosh add-blob .downloads/${i##*/} gluster-build-deps/${i##*/}
  fi
done

UTIL_LINUX_URL="https://github.com/karelzak/util-linux/archive/v2.33.1.tar.gz"
if [ ! -e ".downloads/util-linux-2.33.1.tar.gz" ]
then
  curl -J -L -o .downloads/util-linux-2.33.1.tar.gz $UTIL_LINUX_URL
  bosh add-blob .downloads/util-linux-2.33.1.tar.gz gluster-build-deps/util-linux-2.33.1.tar.gz
fi

for i in $BUILD_TOOL_URLS
do
  if [ ! -e ".downloads/${i##*/}" ]
  then
    curl -J -L -o .downloads/${i##*/} $i
    bosh add-blob .downloads/${i##*/} gluster-build-tools/${i##*/}
  fi
done

GLUSTER_FS="https://download.gluster.org/pub/gluster/glusterfs/5/5.3/glusterfs-5.3.tar.gz"
if [ ! -e ".downloads/glusterfs-5.3.tar.gz" ]
then
  curl -J -L -o .downloads/glusterfs-5.3.tar.gz $GLUSTER_FS
  bosh add-blob .downloads/glusterfs-5.3.tar.gz glusterfs/glusterfs-5.3.tar.gz
fi

PYTHON="https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz"
if [ ! -e ".downloads/Python-3.5.2.tgz" ]
then
  curl -J -L -o .downloads/Python-3.5.2.tgz $PYTHON
  bosh add-blob .downloads/Python-3.5.2.tgz python/Python-3.5.2.tgz
fi
