# Step by step

1. deploy tls-ca container;
2. ./define-directories.sh;
3. ./define-path.sh;
4. ./tls-ca-bootstrap.sh;
5. deploy org0-ca container;
6. ./org0-ca-bootstrap.sh;
7. ./enroll-org0-orderer.sh;
8. ./enroll-org0-admin.sh;
9. ./create-genesis-block.sh;
10. deploy org0-orderer container;