#!/bin/bash
set -e

export PATH="/opt/maven/bin:/usr/lib/jvm/java-11-openjdk/bin:${PATH}"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk"

BUILD_TYPE=$build_type
VERSION=$acs_version
OUTPUT_DIR=$remote_tmp_output_dir
mkdir -p $OUTPUT_DIR
CODE_DIR="/apache/cloudstack"
RELEASE_DIR="/apache/cloudstack-release/$VERSION"
ARCHIVE_FILE="apache-cloudstack-$VERSION-src"

echo "Captured requirements:"
echo "Status - $BUILD_TYPE"
echo "Version - $VERSION"
echo "Remote tmp output dir - $OUTPUT_DIR"
echo "Starting Docker Container"

if ["$BUILD_TYPE" == "release"]; then

  mkdir -p $RELEASE_DIR
  cd /tmp
  wget http://www.mirrorservice.org/sites/ftp.apache.org/cloudstack/releases/$version/$ARCHIVE_FILE.tar.bz2
  tar -jxf /tmp/$ARCHIVE_FILE.tar.bz2
  mv /tmp/$ARCHIVE_FILE/* $RELEASE_DIR
  rm -f /tmp/$ARCHIVE_FILE.tar.bz2
  cd $RELEASE_DIR

  mvn -Pdeveloper -Dnoredist clean install

  cp /$RELEASE_DIR/tools/apidoc/target/xmldoc/html $OUTPUT_DIR

fi

if ["$BUILD_TYPE" == "tag"]; then

  mkdir -p $CODE_DIR
  cd $CODE_DIR 
  git clone https://github.com/apache/cloudstack && cd cloudstack && git checkout -b $VERSION
  LIBS=NONOSS && git clone https://github.com/rhtyd/cloudstack-nonoss.git $LIBS && cd $LIBS
  bash -x install-non-oss.sh &&  rm -rf $CODE_DIR/cloudstack/NONOSS
  #sed -i 's/<scope>provided,test<\/scope>/<scope>test<\/scope>/g' $CODE_DIR/cloudstack/pom.xml
  cd $CODE_DIR/cloudstack
  
  mvn -Pdeveloper -Dnoredist clean install

  cp /$CODE_DIR/cloudstack/tools/apidoc/target/xmldoc/html $OUTPUT_DIR

fi

tail -f /dev/null
