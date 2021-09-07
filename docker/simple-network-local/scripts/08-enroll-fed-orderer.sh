#!/bin/bash
VOLUMES=./volumes
CLIENT_DIR=./client/fed
CERTS=$CLIENT_DIR/orderer/assets/ca
cp $VOLUMES/fed/ca/crypto/ca-cert.pem $CERTS/fed-ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$CLIENT_DIR/orderer
export FABRIC_CA_CLIENT_TLS_CERTFILES=../../../$CERTS/fed-ca-cert.pem
fabric-ca-client enroll -d -u https://orderer1-fed:ordererpw@0.0.0.0:7053
cp $VOLUMES/tls/ca/crypto/ca-cert.pem $CLIENT_DIR/orderer/assets/tls-ca/tls-ca-cert.pem
export FABRIC_CA_CLIENT_MSPDIR=tls-msp
export FABRIC_CA_CLIENT_TLS_CERTFILES=../../../$CLIENT_DIR/orderer/assets/tls-ca/tls-ca-cert.pem
fabric-ca-client enroll -d -u https://orderer1-fed:ordererPW@0.0.0.0:7052 --enrollment.profile tls --csr.hosts orderer1-fed