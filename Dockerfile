FROM python:3
WORKDIR /battle/shadowsocks
RUN pip install git+https://github.com/shadowsocks/shadowsocks.git@master
RUN apt-get update && apt-get install build-essential -y && wget https://github.com/jedisct1/libsodium/releases/download/1.0.13/libsodium-1.0.13.tar.gz && tar xf libsodium-1.0.13.tar.gz && cd libsodium-1.0.13 && ./configure && make -j2 && make install && ldconfig

CMD ["ssserver", "-c", "/mount-data/ssserver.conf"]
