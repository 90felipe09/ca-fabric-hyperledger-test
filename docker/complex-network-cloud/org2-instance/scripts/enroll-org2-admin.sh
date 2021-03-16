#!/bin/bash
VOLUMES=./volumes
CLIENT_DIR=./client/org2
CERTS=$CLIENT_DIR/peer1/assets/ca
export FABRIC_CA_CLIENT_HOME=$CLIENT_DIR/admin
export FABRIC_CA_CLIENT_TLS_CERTFILES=../../../$CERTS/org2-ca-cert.pem
export FABRIC_CA_CLIENT_MSPDIR=msp
fabric-ca-client enroll -d -u https://admin-org2:org2AdminPW@0.0.0.0:7055
mkdir $CLIENT_DIR/peer1/msp/admincerts
cp $CLIENT_DIR/admin/msp/signcerts/cert.pem $CLIENT_DIR/peer1/msp/admincerts/org2-admin-cert.pem