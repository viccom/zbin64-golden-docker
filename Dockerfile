FROM ubuntu:20.04
LABEL version="1.0" description="zbin64_golden" by="viccom"
ENV SZPLATPATH /zbin64golden
WORKDIR $SZPLATPATH
RUN apt update \
	&& apt install wget -y \
	&& apt install unzip -y \
    && wget -O /tmp/zbin64golden.tar.gz "https://symtech.oss-cn-beijing.aliyuncs.com/szplat/zbin64golden.tar.gz" \
    && tar -zxvf /tmp/zbin64golden.tar.gz -C / \
    && ln -s /zbin64golden/libgoldenapi.so /lib/libgoldenapi.so.3 \
    && ln -s /zbin64golden/libACE.so.6.0.0 /lib/libACE.so.6.0.0 \
    && ln -s /zbin64golden/libiconv.so.2 /lib/libiconv.so.2 \
    && rm -f /tmp/zbin64golden.tar.gz

EXPOSE 5180/tcp 5191/tcp 6181/tcp 6190/tcp 2404/tcp 5181/udp 5190/udp 5192/udp

CMD ["/zbin64golden/SZDaemon.ex"]