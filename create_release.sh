
#!/bin/bash
if [ $1 ]
then
  VERSION=$1
  bosh create-release --force --version=${VERSION} --tarball=glusterfs-boshrelease-v${VERSION}.tgz
else
  bosh create-release --force --tarball=glusterfs-boshrelease.tar.gz
fi
