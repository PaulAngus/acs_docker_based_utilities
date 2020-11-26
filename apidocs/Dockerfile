FROM centos:7

ENV PATH="/opt/maven/bin:/usr/lib/jvm/java-11-openjdk/bin:${PATH}"
ENV JAVA_HOME="/usr/lib/jvm/java-11-openjdk"

RUN yum install -y epel-release deltarpm && yum update -y && yum install -y ca-certificates java-11-openjdk-devel sudo tar ws-commons-util jpackage-utils gcc glibc-devel mysql-connector-java wget bzip2 git python-setuptools python-pip && yum clean all

RUN cd /tmp && wget http://apache.mirror.anlx.net/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz && tar zxf apache-maven-3.6.3-bin.tar.gz && mv apache-maven-3.6.3/ /opt/maven && rm -f apache-maven-3.6.3-bin.tar.gz 
RUN TMP_CODE_DIR="/tmp/warm_m2_cache" && mkdir -p $TMP_CODE_DIR &&  cd $TMP_CODE_DIR &&  git clone https://github.com/apache/cloudstack && cd cloudstack && LIBS=NONOSS && git clone https://github.com/rhtyd/cloudstack-nonoss.git $LIBS && cd $LIBS && /bin/bash -x install-non-oss.sh &&  rm -rf $TMP_CODE_DIR/cloudstack/NONOSS && cd $TMP_CODE_DIR/cloudstack &&  mvn -Pdeveloper -Dnoredist clean install && cd /tmp && rm -rf $TMP_CODE_DIR
#RUN sed -i 's/<scope>provided,test<\/scope>/<scope>test<\/scope>/g' /apache/cloudstack/pom.xml && cd /apache/cloudstack && mvn -DskipTests clean install -T3

COPY startup.sh /usr/bin/startup.sh
ENTRYPOINT ["startup.sh"]
#CMD ["startup.sh"]