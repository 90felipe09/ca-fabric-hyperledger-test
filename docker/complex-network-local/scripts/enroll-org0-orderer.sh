#!/bin/bash
VOLUMES=./volumes
CLIENT_DIR=./client/org0/orderer
CERTS=$CLIENT_DIR/assets/ca
cp $VOLUMES/org0/ca/crypto/ca-cert.pem $CERTS/org0-ca-cert.pem
export FABRIC_CA_CLIENT_HOME=$CLIENT_DIR/orderer
export FABRIC_CA_CLIENT_TLS_CERTFILES=../../../../$CERTS/org0-ca-cert.pem
fabric-ca-client enroll -d -u https://orderer1-org0:ordererpw@0.0.0.0:7053
cp $VOLUMES/tls/ca/crypto/ca-cert.pem $CLIENT_DIR/assets/tls-ca/tls-ca-cert.pem
export FABRIC_CA_CLIENT_MSPDIR=tls-msp
export FABRIC_CA_CLIENT_TLS_CERTFILES=../../../../$CLIENT_DIR/assets/tls-ca/tls-ca-cert.pem
fabric-ca-client enroll -d -u https://orderer1-org0:ordererPW@0.0.0.0:7052 --enrollment.profile tls --csr.hosts orderer1-org0