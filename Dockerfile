FROM debian:stretch

RUN apt-get update && \
    apt-get install -y git python python-setuptools gcc glusterfs-server glusterfs-client && \
    git clone https://github.com/aravindavk/glusterfs-rest.git /glusterfs-rest && \
    cd /glusterfs-rest && python setup.py install || \
    apt-get remove -y --auto-remove git gcc && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 9000

ADD entrypoint /

ENTRYPOINT ["/entrypoint"]
