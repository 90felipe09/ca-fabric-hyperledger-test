#!/bin/bash
VOLUMES=./volumes
CLIENT_DIR=./client
CERTS=$CLIENT_DIR/crypto
CLIENT_HOME=$CLIENT_DIR
cp $VOLUMES/tls/ca/crypto/ca-cert.pem $CERTS/tls-ca-cert.pem
export FABRIC_CA_CLIENT_TLS_CERTFILES=crypto/tls-ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$CLIENT_HOME
fabric-ca-client enroll -d -u https://tls-ca-admin:tls-ca-adminpw@0.0.0.0:7052
fabric-ca-client register -d --id.name peer1-org1 --id.secret peer1PW --id.type peer -u https://0.0.0.0:7052
fabric-ca-client register -d --id.name peer1-org2 --id.secret peer1PW --id.type peer -u https://0.0.0.0:7052
fabric-ca-client register -d --id.name orderer1-org0 --id.secret ordererPW --id.type orderer -u https://0.0.0.0:7052