CLIENT_PATH=./client
mkdir -p $CLIENT_PATH/tls-ca/crypto
mkdir -p $CLIENT_PATH/tls-ca/admin

mkdir -p $CLIENT_PATH/org0/ca/crypto
mkdir -p $CLIENT_PATH/org0/ca/admin

mkdir -p $CLIENT_PATH/org1/ca/crypto
mkdir -p $CLIENT_PATH/org1/ca/admin

mkdir -p $CLIENT_PATH/org1/peer1/assets/ca
mkdir -p $CLIENT_PATH/org1/peer1/assets/tls-ca

mkdir -p $CLIENT_PATH/org0/orderer/assets/ca
mkdir -p $CLIENT_PATH/org0/orderer/assets/tls-ca