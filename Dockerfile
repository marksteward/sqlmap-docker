FROM python

RUN apt-get update && \
    apt-get -y install git curl && \
    rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://github.com/sqlmapproject/sqlmap

WORKDIR /data

ENTRYPOINT ["python", "/sqlmap/sqlmap.py", "--output-dir", "/data"]
