FROM ubuntu:24.10

RUN apt-get update && apt-get -y install curl git nodejs npm

# mongodb
RUN curl -sL https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu2204-7.0.11.tgz | tar xvz && \
    mv mongodb-linux-x86_64-ubuntu2204-7.0.11/bin/* /usr/local/bin/ && \
    rm -rf mongodb-linux-x86_64-ubuntu2204-7.0.11/ && \
    mkdir -p /var/lib/mongo && chown `whoami` /var/lib/mongo && \
    mkdir -p /var/log/mongodb && chown `whoami` /var/log/mongodb
# mongod --dbpath /var/lib/mongo --logpath /var/log/mongodb/mongod.log --bind_ip_all --fork

# mongosh
RUN curl -sL https://downloads.mongodb.com/compass/mongosh-2.2.6-linux-x64.tgz | tar xvz && \
    cp mongosh-2.2.6-linux-x64/bin/mongosh_crypt_v1.so /usr/local/lib/ && \
    cp mongosh-2.2.6-linux-x64/bin/mongosh /usr/local/bin/ && \
    rm -rf mongosh-2.2.6-linux-arm64
# mongosh

