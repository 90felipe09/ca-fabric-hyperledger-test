#!/bin/bash
VOLUMES=./volumes
CLIENT_DIR=./client/usp/poli
CERTS=$CLIENT_DIR/assets/ca
CLIENT_HOME=$CLIENT_DIR/admin
cp $VOLUMES/usp/ca/crypto/ca-cert.pem $CERTS/usp-ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$CLIENT_DIR
export FABRIC_CA_CLIENT_TLS_CERTFILES=../../../$CERTS/usp-ca-cert.pem
export FABRIC_CA_CLIENT_MSPDIR=msp
fabric-ca-client enroll -d -u https://poli-usp:poliPW@0.0.0.0:7054
cp $VOLUMES/tls/ca/crypto/ca-cert.pem $CLIENT_DIR/assets/tls-ca/tls-ca-cert.pem
export FABRIC_CA_CLIENT_MSPDIR=tls-msp
export FABRIC_CA_CLIENT_TLS_CERTFILES=../../../$CLIENT_DIR/assets/tls-ca/tls-ca-cert.pem
fabric-ca-client enroll -d -u https://poli-usp:poliPW@0.0.0.0:7052 --enrollment.profile tls --csr.hosts poli-usp
