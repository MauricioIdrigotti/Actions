FROM ubuntu:latest

WORKDIR /opt

COPY . .

#-Java
RUN tar -xzf jdk-6u45-linux-x64.bin.tar.gz -C /opt && \
    ./jdk-6u45-linux-x64.bin && \
    rm jdk-6u45-linux-x64.bin.tar.gz && rm jdk-6u45-linux-x64.bin

ENV ANT_VERSION 1.7.1

#-Ant
RUN apt-get update -y && apt-get install wget unzip -y && \
    wget https://archive.apache.org/dist/ant/binaries/apache-ant-${ANT_VERSION}-bin.zip -O /tmp/apache-ant.zip && \
    unzip /tmp/apache-ant.zip -d /opt/ && \
    ln -s /opt/apache-ant-${ANT_VERSION} /opt/ant && \
    rm /tmp/apache-ant.zip

ENV BUILD_SOURCESDIRECTORY /siga-saude
ENV ANT_HOME /opt/ant
ENV JAVA_HOME /opt/jdk1.6.0_45
ENV PATH $PATH:$JAVA_HOME/bin:$ANT_HOME/bin

CMD ["ant","build"]
