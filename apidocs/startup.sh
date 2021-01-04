#!/bin/bash
set -e

export PATH="/opt/maven/bin:/usr/lib/jvm/java-11-openjdk/bin:${PATH}"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk"

BUILD_TYPE="$build_type"
VERSION="$acs_version"
CODE_DIR="/apache/cloudstack"
RELEASE_DIR="/apache/cloudstack-release/$VERSION"
ARCHIVE_FILE="apache-cloudstack-$VERSION-src"
OUTPUT_DIR="$container_mount_dir"
#--env build_type=$build_type --env acs_version=$acs_version --env volume_name=$volume_name --env container_mount_dir=$container_mount_dir

echo ""
echo "Requirements received in container:"
echo ""
echo "Build Type - $BUILD_TYPE"
echo "Version - $VERSION"
echo "container mounted output dir - $OUTPUT_DIR"
echo ""
echo "Checking Docker volume"
echo "Volume mounted, continuing"
echo ""

if [ "$BUILD_TYPE" == "release" ]; then

  mkdir -p $RELEASE_DIR
  cd /tmp
  wget http://www.mirrorservice.org/sites/ftp.apache.org/cloudstack/releases/$VERSION/$ARCHIVE_FILE.tar.bz2
  tar -jxf /tmp/$ARCHIVE_FILE.tar.bz2
  mv /tmp/$ARCHIVE_FILE/* $RELEASE_DIR
  rm -f /tmp/$ARCHIVE_FILE.tar.bz2
  cd $RELEASE_DIR

  mvn -Pdeveloper -Dnoredist clean install

  cp -R $RELEASE_DIR/tools/apidoc/target/xmldoc/* $OUTPUT_DIR || true

fi

if [ "$BUILD_TYPE" == "tag" ]; then

  mkdir -p $CODE_DIR
  cd $CODE_DIR 
  git clone https://github.com/apache/cloudstack && cd cloudstack
  if [ "$VERSION" != "master" ]; then git checkout -b $VERSION; fi
  LIBS=NONOSS
  git clone https://github.com/rhtyd/cloudstack-nonoss.git $LIBS && cd $LIBS
  bash -x install-non-oss.sh &&  rm -rf $CODE_DIR/cloudstack/NONOSS
  #sed -i 's/<scope>provided,test<\/scope>/<scope>test<\/scope>/g' $CODE_DIR/cloudstack/pom.xml
  cd $CODE_DIR/cloudstack
  
  mvn -Pdeveloper -Dnoredist clean install

  cp -R $CODE_DIR/cloudstack/tools/apidoc/target/xmldoc/* $OUTPUT_DIR/ || true

fi

#tail -f /dev/null
