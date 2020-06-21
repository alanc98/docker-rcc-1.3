FROM ubuntu:latest
LABEL Description="RTEMS RCC 1.3 rc8 tools image"
ENV DEBIAN_FRONTEND noninteractive
ENV TERM linux

RUN apt-get update && \
    #
    # Install tools and libraries
    #
    apt-get install -y \
       apt-utils build-essential \
       vim u-boot-tools git cmake \
       bison flex texinfo bzip2 \
       xz-utils unzip python wget pax \
       lua5.3 liblua5.3-dev libexpat1-dev \
       libpython2.7-dev zlib1g-dev libtinfo-dev && \
     rm -rf /var/lib/apt/lists/* && \
     #
     # Download and extract rcc 1.3 rc8 tools
     #
     cd /opt && \
     wget https://www.gaisler.com/anonftp/rcc/rcc-1.3/1.3-rc8/sparc-rtems-5-gcc-7.5.0-1.3-rc8-linux.txz && \
     tar Jxf sparc-rtems-5-gcc-7.5.0-1.3-rc8-linux.txz && \
     #
     #
     rm -rf sparc-rtems-5-gcc-7.5.0-1.3-rc8-linux.txz

ENV PATH="/opt/rcc-1.3-rc8-gcc/bin:${PATH}"
