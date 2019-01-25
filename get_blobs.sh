#!/bin/bash

if [ ! -d .downloads ]
then
  mkdir -p .downloads
fi

#TRUSTY_URLS="http://mirrors.kernel.org/ubuntu/pool/main/libt/libtool/libtool_2.4.2-1.7ubuntu1_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/f/flex/flex_2.5.35-10.1ubuntu2_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/b/bison/bison_3.0.2.dfsg-2_amd64.deb
#http://security.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2-dev_2.9.1+dfsg1-3ubuntu4.13_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/liba/libaio/libaio-dev_0.3.109-4_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/libi/libibverbs/libibverbs1_1.1.7-1ubuntu1_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/libi/libibverbs/libibverbs-dev_1.1.7-1ubuntu1_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/libr/librdmacm/librdmacm1_1.0.16-1_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/libr/librdmacm/librdmacm-dev_1.0.16-1_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/r/readline6/libreadline-dev_6.3-4ubuntu2_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/l/lvm2/liblvm2cmd2.02_2.02.98-6ubuntu2_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/l/lvm2/liblvm2app2.2_2.02.98-6ubuntu2_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/l/lvm2/liblvm2-dev_2.02.98-6ubuntu2_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/l/lvm2/libdevmapper-dev_1.02.77-6ubuntu2_amd64.deb
#http://security.ubuntu.com/ubuntu/pool/main/g/glib2.0/libglib2.0-bin_2.40.2-0ubuntu1.1_amd64.deb
#http://security.ubuntu.com/ubuntu/pool/main/g/glib2.0/libglib2.0-dev_2.40.2-0ubuntu1.1_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/libu/liburcu/liburcu1_0.7.12-0ubuntu2_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/libu/liburcu/liburcu-dev_0.7.12-0ubuntu2_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/universe/c/cmocka/libcmocka0_0.3.2-1_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/universe/c/cmocka/libcmocka-dev_0.3.2-1_amd64.deb
#http://security.ubuntu.com/ubuntu/pool/main/s/sqlite3/libsqlite3-dev_3.8.2-1ubuntu2.1_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/a/acl/libacl1-dev_2.2.52-1_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/a/attr/libattr1-dev_2.4.47-1ubuntu1_amd64.deb
#http://security.ubuntu.com/ubuntu/pool/main/p/pcre3/libpcre3-dev_8.31-2ubuntu2.2_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/a/autoconf/autoconf_2.69-6_all.deb
#http://mirrors.kernel.org/ubuntu/pool/main/a/automake-1.14/automake_1.14.1-2ubuntu1_all.deb
#http://mirrors.kernel.org/ubuntu/pool/main/a/autotools-dev/autotools-dev_20130810.1_all.deb
#http://security.ubuntu.com/ubuntu/pool/main/p/pcre3/libpcrecpp0_8.31-2ubuntu2.2_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/l/lvm2/libdevmapper-event1.02.1_1.02.77-6ubuntu2_amd64.deb
#http://security.ubuntu.com/ubuntu/pool/main/g/glib2.0/libglib2.0-data_2.40.2-0ubuntu1.1_all.deb
#http://security.ubuntu.com/ubuntu/pool/main/s/systemd/libudev-dev_204-5ubuntu20.26_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/libs/libselinux/libselinux1-dev_2.2.2-1_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/libe/libelf/libelfg0_0.8.13-5_amd64.deb
#http://security.ubuntu.com/ubuntu/pool/main/p/pcre3/libpcre3_8.31-2ubuntu2.2_amd64.deb
#http://security.ubuntu.com/ubuntu/pool/main/s/systemd/libudev1_204-5ubuntu20.26_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/libs/libsepol/libsepol1_2.2-1_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/libs/libsepol/libsepol1-dev_2.2-1_amd64.deb
#http://mirrors.kernel.org/ubuntu/pool/main/libs/libselinux/libselinux1_2.2.2-1_amd64.deb
#http://security.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc1_0.2.2-5ubuntu2.1_amd64.deb
#http://security.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc-dev_0.2.2-5ubuntu2.1_amd64.deb
#http://launchpadlibrarian.net/347388011/python3.4-dev_3.4.3-1ubuntu1~14.04.6_amd64.deb
#http://security.ubuntu.com/ubuntu/pool/main/e/expat/libexpat1-dev_2.1.0-4ubuntu1.4_amd64.deb
#http://security.ubuntu.com/ubuntu/pool/main/e/expat/libexpat1_2.1.0-4ubuntu1.4_amd64.deb
#http://launchpadlibrarian.net/347388010/libpython3.4_3.4.3-1ubuntu1~14.04.6_amd64.deb
#http://launchpadlibrarian.net/347388015/libpython3.4-dev_3.4.3-1ubuntu1~14.04.6_amd64.deb
#"

####################
#
# Should look to replace these with source versions at some stage instead of .debs
#
XENIAL_URLS="http://mirrors.kernel.org/ubuntu/pool/main/libt/libtool/libtool_2.4.6-0.1_all.deb
http://mirrors.kernel.org/ubuntu/pool/main/f/flex/flex_2.6.0-11_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/b/bison/bison_3.0.4.dfsg-1_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/libx/libxml2/libxml2-dev_2.9.3+dfsg1-1ubuntu0.6_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/liba/libaio/libaio-dev_0.3.110-2_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/libi/libibverbs/libibverbs1_1.1.8-1.1ubuntu2_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/libi/libibverbs/libibverbs-dev_1.1.8-1.1ubuntu2_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/libr/librdmacm/librdmacm1_1.0.21-1_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/libr/librdmacm/librdmacm-dev_1.0.21-1_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/r/readline6/libreadline-dev_6.3-8ubuntu2_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/l/lvm2/liblvm2cmd2.02_2.02.133-1ubuntu10_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/l/lvm2/liblvm2app2.2_2.02.133-1ubuntu10_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/l/lvm2/liblvm2-dev_2.02.133-1ubuntu10_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/l/lvm2/libdevmapper-dev_1.02.110-1ubuntu10_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/g/glib2.0/libglib2.0-bin_2.48.2-0ubuntu4.1_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/g/glib2.0/libglib2.0-dev_2.48.2-0ubuntu4.1_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/universe/libu/liburcu/liburcu-dev_0.9.1-3_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/universe/c/cmocka/libcmocka0_1.0.1-2_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/universe/c/cmocka/libcmocka-dev_1.0.1-2_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/s/sqlite3/libsqlite3-dev_3.11.0-1ubuntu1_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/a/acl/libacl1-dev_2.2.52-3_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/a/attr/libattr1-dev_2.4.47-2_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/p/pcre3/libpcre3-dev_8.38-3.1_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/a/autoconf/autoconf_2.69-9_all.deb
http://mirrors.kernel.org/ubuntu/pool/main/a/automake-1.15/automake_1.15-4ubuntu1_all.deb
http://mirrors.kernel.org/ubuntu/pool/main/a/autotools-dev/autotools-dev_20150820.1_all.deb
http://mirrors.kernel.org/ubuntu/pool/main/l/lvm2/libdevmapper-event1.02.1_1.02.110-1ubuntu10_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/g/glib2.0/libglib2.0-data_2.48.2-0ubuntu4.1_all.deb
http://security.ubuntu.com/ubuntu/pool/main/s/systemd/libudev-dev_229-4ubuntu21.15_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/libs/libselinux/libselinux1-dev_2.4-3build2_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/p/pcre3/libpcre3_8.38-3.1_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/s/systemd/libudev1_229-4ubuntu21.15_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/libs/libsepol/libsepol1_2.4-2_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/libs/libsepol/libsepol1-dev_2.4-2_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/libs/libselinux/libselinux1_2.4-3build2_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc1_0.2.5-1ubuntu0.1_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/libt/libtirpc/libtirpc-dev_0.2.5-1ubuntu0.1_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/p/python3-defaults/python3-dev_3.5.1-3_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/e/expat/libexpat1-dev_2.1.0-7ubuntu0.16.04.3_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/e/expat/libexpat1_2.1.0-7ubuntu0.16.04.3_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/p/python3-defaults/libpython3-dev_3.5.1-3_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/p/pkg-config/pkg-config_0.29.1-0ubuntu1_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/g/glib2.0/libglib2.0-0_2.48.2-0ubuntu4.1_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/l/lvm2/dmeventd_1.02.110-1ubuntu10_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/p/python3.5/libpython3.5-dev_3.5.2-2ubuntu0~16.04.5_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/p/pcre3/libpcre16-3_8.38-3.1_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/p/pcre3/libpcre32-3_8.38-3.1_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/p/pcre3/libpcrecpp0v5_8.38-3.1_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/p/python3.5/libpython3.5-stdlib_3.5.2-2ubuntu0~16.04.5_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/universe/libu/liburcu/liburcu4_0.9.1-3_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/p/python3.5/libpython3.5_3.5.2-2ubuntu0~16.04.5_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/p/python3-defaults/python3_3.5.1-3_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/p/python3.5/libpython3.5-minimal_3.5.2-2ubuntu0~16.04.5_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/p/python3.5/python3.5-dev_3.5.2-2ubuntu0~16.04.5_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/p/python3.5/python3.5_3.5.2-2ubuntu0~16.04.5_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/p/python-defaults/python_2.7.11-1_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/p/python3.5/python3.5-minimal_3.5.2-2ubuntu0~16.04.5_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/p/python-defaults/python-minimal_2.7.11-1_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7-minimal_2.7.12-1ubuntu0~16.04.4_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/p/python2.7/libpython2.7-minimal_2.7.12-1ubuntu0~16.04.4_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/p/python2.7/python2.7_2.7.12-1ubuntu0~16.04.4_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/p/python-defaults/libpython-stdlib_2.7.11-1_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/p/python2.7/libpython2.7-stdlib_2.7.12-1ubuntu0~16.04.4_amd64.deb
http://security.ubuntu.com/ubuntu/pool/main/g/git/git_2.7.4-0ubuntu1.6_amd64.deb
http://mirrors.kernel.org/ubuntu/pool/main/libe/liberror-perl/liberror-perl_0.17-1.2_all.deb
http://security.ubuntu.com/ubuntu/pool/main/g/git/git-man_2.7.4-0ubuntu1.6_all.deb
"

for i in $XENIAL_URLS
do
  if [ ! -e ".downloads/${i##*/}" ]
  then
    curl -J -L -o .downloads/${i##*/} $i
    bosh add-blob .downloads/${i##*/} gluster-build-deps/${i##*/}
  fi
done

GLUSTER_FS="https://download.gluster.org/pub/gluster/glusterfs/5/5.3/glusterfs-5.3.tar.gz"
if [ ! -e ".downloads/glusterfs-5.3.tar.gz" ]
then
  curl -J -L -o .downloads/glusterfs-5.3.tar.gz $GLUSTER_FS
  bosh add-blob .downloads/glusterfs-5.3.tar.gz glusterfs/glusterfs-5.3.tar.gz
fi
