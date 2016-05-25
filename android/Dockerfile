FROM yongjhih/android:23

RUN apt-get update && \
    apt-get install -y git \
            g++ \
            automake \
            autoconf \
            autoconf-archive \
            libtool \
            libboost-all-dev \
            libevent-dev \
            libdouble-conversion-dev \
            libgoogle-glog-dev \
            libgflags-dev \
            liblz4-dev \
            liblzma-dev \
            libsnappy-dev \
            make \
            zlib1g-dev \
            binutils-dev \
            libjemalloc-dev \
            libssl-dev \
            python3 \
            libiberty-dev \
            libjsoncpp-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/facebook/redex /redex

ENV LD_LIBRARY_PATH /usr/local/lib

WORKDIR /redex

RUN git submodule update --init && \
    autoreconf -ivf && ./configure && make && make install

CMD ["redex"]
