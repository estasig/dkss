FROM python:3
WORKDIR /battle/shadowsocks
RUN pip install git+https://github.com/shadowsocks/shadowsocks.git@master
EXPOSE 3382

COPY /mount-data/ssserver.conf /battle/shadowsocks
CMD ["ssserver", "-c", "./ssserver.conf"]
