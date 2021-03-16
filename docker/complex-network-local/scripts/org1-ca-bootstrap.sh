#!/bin/bash
VOLUMES=./volumes
CLIENT_DIR=./client/org1/ca
CERTS=$CLIENT_DIR/crypto
CLIENT_HOME=$CLIENT_DIR/admin
cp $VOLUMES/org1/ca/crypto/ca-cert.pem $CERTS/tls-ca-cert.pem
export FABRIC_CA_CLIENT_TLS_CERTFILES=../crypto/tls-ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$CLIENT_HOME
fabric-ca-client enroll -d -u https://rca-org1-admin:rca-org1-adminpw@0.0.0.0:7054
fabric-ca-client register -d --id.name peer1-org1 --id.secret peer1PW --id.type peer -u https://0.0.0.0:7054
fabric-ca-client register -d --id.name admin-org1 --id.secret org1AdminPW --id.type user -u https://0.0.0.0:7054
fabric-ca-client register -d --id.name user-org1 --id.secret org1UserPW --id.type user -u https://0.0.0.0:7054