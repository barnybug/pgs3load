FROM postgres:10.14
RUN apt-get update && \
    apt-get install ca-certificates && \
    rm -rf /var/lib/apt/lists/*
ADD s3 /usr/local/bin
ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]