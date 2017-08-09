FROM python:3
WORKDIR /battle/shadowsocks
RUN pip install git+https://github.com/shadowsocks/shadowsocks.git@master

CMD ["ssserver", "-c", "/mount-data/ssserver.conf"]
