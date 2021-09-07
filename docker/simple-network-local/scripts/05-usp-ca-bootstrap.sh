#!/bin/bash
VOLUMES=./volumes
CLIENT_DIR=./client/usp/ca
CERTS=$CLIENT_DIR/crypto
CLIENT_HOME=$CLIENT_DIR/admin
cp $VOLUMES/usp/ca/crypto/ca-cert.pem $CERTS/tls-ca-cert.pem
export FABRIC_CA_CLIENT_TLS_CERTFILES=../crypto/tls-ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$CLIENT_HOME
fabric-ca-client enroll -d -u https://rca-usp-admin:rca-usp-adminpw@0.0.0.0:7054
fabric-ca-client register -d --id.name poli-usp --id.secret poliPW --id.type peer -u https://0.0.0.0:7054
fabric-ca-client register -d --id.name admin-usp --id.secret uspAdminPW --id.type user -u https://0.0.0.0:7054
fabric-ca-client register -d --id.name user-usp --id.secret uspUserPW --id.type user -u https://0.0.0.0:7054