#!/bin/bash

if [ ! -d .downloads ]
then
  mkdir -p .downloads
fi

curl -J -L -o .downloads/bison-2.3.tar.gz https://ftp.gnu.org/gnu/bison/bison-2.3.tar.gz
curl -J -L -o .downloads/expat-2.0.1.tar.gz https://github.com/libexpat/libexpat/releases/download/R_2_0_1/expat-2.0.1.tar.gz
curl -J -L -o .downloads/flex-2.5.33.tar.gz http://download.nust.na/pub2/openpkg1/sources/DST/flex/flex-2.5.33.tar.gz
curl -J -L -o .downloads/intltool-0.51.0.tar.gz https://src.fedoraproject.org/lookaside/pkgs/intltool/intltool-0.51.0.tar.gz/12e517cac2b57a0121cda351570f1e63/intltool-0.51.0.tar.gz
curl -J -L -o .downloads/libaio-0.3.110.tar.gz https://src.fedoraproject.org/lookaside/pkgs/libaio/libaio-0.3.110.tar.gz/2a35602e43778383e2f4907a4ca39ab8/libaio-0.3.110.tar.gz
curl -J -L -o .downloads/libibverbs-1.1.8.tar.gz https://www.openfabrics.org/downloads/verbs/libibverbs-1.1.8.tar.gz
curl -J -L -o .downloads/librdmacm-1.0.21.tar.gz https://www.openfabrics.org/downloads/rdmacm/librdmacm-1.0.21.tar.gz
curl -J -L -o .downloads/userspace-rcu-0.9.1.tar.bz2 http://lttng.org/files/urcu/userspace-rcu-0.9.1.tar.bz2
curl -J -L -o .downloads/XML-Parser-2.44.tar.gz https://www.cpan.org/modules/by-module/XML/XML-Parser-2.44.tar.gz
curl -J -L -o .downloads/LVM2.2.02.130.tgz https://src.fedoraproject.org/lookaside/extras/lvm2/LVM2.2.02.130.tgz/e7ae07e413120713549cc6dd2a558c75/LVM2.2.02.130.tgz
curl -J -L -o .downloads/autoconf-2.69.tar.gz https://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz
curl -J -L -o .downloads/automake-1.15.tar.gz https://ftp.gnu.org/gnu/automake/automake-1.15.tar.gz
curl -J -L -o .downloads/libtool-2.4.6.tar.gz https://ftp.gnu.org/gnu/libtool/libtool-2.4.6.tar.gz
curl -J -L -o .downloads/glusterfs-3.6.7.tar.gz https://download.gluster.org/pub/gluster/glusterfs/old-releases/3.6/3.6.7/glusterfs-3.6.7.tar.gz
curl -J -L -o .downloads/Python-2.7.8.tgz https://www.python.org/ftp/python/2.7.8/Python-2.7.8.tgz

bosh add-blob .downloads/bison-2.3.tar.gz gluster-build-deps/bison-2.3.tar.gz
bosh add-blob .downloads/expat-2.0.1.tar.gz gluster-build-deps/expat-2.0.1.tar.gz
bosh add-blob .downloads/flex-2.5.33.tar.gz gluster-build-deps/flex-2.5.33.tar.gz
bosh add-blob .downloads/intltool-0.51.0.tar.gz gluster-build-deps/intltool-0.51.0.tar.gz
bosh add-blob .downloads/libaio-0.3.110.tar.gz gluster-build-deps/libaio-0.3.110-1.tar.gz
bosh add-blob .downloads/libibverbs-1.1.8.tar.gz gluster-build-deps/libibverbs-1.1.8.tar.gz
bosh add-blob .downloads/librdmacm-1.0.21.tar.gz gluster-build-deps/librdmacm-1.0.21.tar.gz
bosh add-blob .downloads/userspace-rcu-0.9.1.tar.bz2 gluster-build-deps/userspace-rcu-0.9.1.tar.bz2
bosh add-blob .downloads/XML-Parser-2.44.tar.gz gluster-build-deps/XML-Parser-2.44.tar.gz
bosh add-blob .downloads/LVM2.2.02.130.tgz gluster-build-deps/LVM2.2.02.130.tgz
bosh add-blob .downloads/autoconf-2.69.tar.gz gluster-build-tools/autoconf-2.69.tar.gz
bosh add-blob .downloads/automake-1.15.tar.gz gluster-build-tools/automake-1.15.tar.gz
bosh add-blob .downloads/libtool-2.4.6.tar.gz gluster-build-tools/libtool-2.4.6.tar.gz
bosh add-blob .downloads/glusterfs-3.6.7.tar.gz glusterfs/glusterfs-3.6.7.tar.gz
bosh add-blob .downloads/Python-2.7.8.tgz python/Python-2.7.8.tgz
