FROM python:3.12

LABEL maintainer="qiaohao.peng <qiaohao.peng@outlook.com>"

RUN pip3 install radicale==3.3.0

EXPOSE 5232
VOLUME /var/lib/radicale/collections

ENTRYPOINT ["radicale", "--hosts", "0.0.0.0:5232"]
