#!/bin/bash
VOLUMES=./volumes
CLIENT_DIR=./client/org2/peer1
CERTS=$CLIENT_DIR/assets/ca
CLIENT_HOME=$CLIENT_DIR/admin
cp $VOLUMES/org2/ca/crypto/ca-cert.pem $CERTS/org2-ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$CLIENT_DIR
export FABRIC_CA_CLIENT_TLS_CERTFILES=../../../$CERTS/org2-ca-cert.pem
export FABRIC_CA_CLIENT_MSPDIR=msp
fabric-ca-client enroll -d -u https://peer1-org2:peer1PW@0.0.0.0:7055
cp $VOLUMES/tls/ca/crypto/ca-cert.pem $CLIENT_DIR/assets/tls-ca/tls-ca-cert.pem
export FABRIC_CA_CLIENT_MSPDIR=tls-msp
export FABRIC_CA_CLIENT_TLS_CERTFILES=../../../$CLIENT_DIR/assets/tls-ca/tls-ca-cert.pem
fabric-ca-client enroll -d -u https://peer1-org2:peer1PW@0.0.0.0:7052 --enrollment.profile tls --csr.hosts peer1-org2
