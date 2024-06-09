# mongodb
curl -sL https://fastdl.mongodb.org/linux/mongodb-linux-aarch64-ubuntu2204-7.0.11.tgz | tar xvz
sudo mv mongodb-linux-aarch64-ubuntu2204-7.0.11/* /usr/local/bin/
rm -rf mongodb-linux-aarch64-ubuntu2204-7.0.11/
sudo mkdir -p /var/lib/mongo && chown `whoami` /var/lib/mongo
sudo mkdir -p /var/log/mongodb && chown `whoami` /var/log/mongodb

# start mongodb
mongod --dbpath /var/lib/mongo --logpath /var/log/mongodb/mongod.log --bind_ip_all --fork

# mongosh
curl -sL https://downloads.mongodb.com/compass/mongosh-2.2.6-linux-arm64.tgz | tar xvz
sudo cp mongosh-2.2.6-linux-arm64/bin/mongosh_crypt_v1.so /usr/local/lib/
sudo cp mongosh-2.2.6-linux-arm64/bin/mongosh /usr/local/bin/
rm -rf mongosh-2.2.6-linux-arm64

# start mongosh
mongosh

# nodejs
sudo apt install nodejs
