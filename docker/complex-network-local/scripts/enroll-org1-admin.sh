#!/bin/bash
VOLUMES=./volumes
CLIENT_DIR=./client/org1
CERTS=$CLIENT_DIR/peer1/assets/ca
export FABRIC_CA_CLIENT_HOME=$CLIENT_DIR/admin
export FABRIC_CA_CLIENT_TLS_CERTFILES=../../../$CERTS/org1-ca-cert.pem
export FABRIC_CA_CLIENT_MSPDIR=msp
fabric-ca-client enroll -d -u https://admin-org1:org1AdminPW@0.0.0.0:7054
mkdir $CLIENT_DIR/peer1/msp/admincerts
cp $CLIENT_DIR/admin/msp/signcerts/cert.pem $CLIENT_DIR/peer1/msp/admincerts/org1-admin-cert.pem