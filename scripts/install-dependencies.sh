#!/bin/bash

mongod --dbpath /var/lib/mongo --logpath /var/log/mongodb/mongod.log --bind_ip_all --fork && \
echo "MongoDB Running"