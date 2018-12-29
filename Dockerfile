From ubuntu:18.04

WORKDIR /tmp

RUN apt-get update && \
    apt-get install -y librtlsdr-dev \
    rtl-sdr \
    git \
    gcc  \
    libusb-1.0.0-dev \
    pkg-config \
    make

RUN git clone https://github.com/antirez/dump1090.git && \
    cd dump1090 && \
    make
WORKDIR /tmp/dump1090

ENTRYPOINT ["./dump1090"]
