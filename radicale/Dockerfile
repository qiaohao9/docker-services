FROM python:3.12

LABEL maintainer="qiaohao.peng <qiaohao.peng@outlook.com>"

ARG version=3.3.0

WORKDIR /etc/radicale
COPY entrypoint.sh /entrypoint.sh

RUN pip3 install radicale==${version}

EXPOSE 5232
VOLUME /var/lib/radicale/collections

ENTRYPOINT ["/entrypoint.sh"]
