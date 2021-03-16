# Simple network local topology

```
volumes/
├── tls/
|    └── ca/ 
├── org0
|    ├── ca/
|    └── orderer/  
└── org1
     ├── ca/ 
     └── peer1/ 
```

## scripts Step by step configuration:

1. ./define-directories.sh
2. ./define-path.sh
3. deploy tls-ca container
4. ./tls-ca-bootstrap.sh
5. deploy org0-ca container
6. ./org0-ca-bootstrap.sh
7. deploy org1-ca container
8. ./org1-ca-bootstrap.sh
11. ./org1-peer1-bootstrap.sh
12. ./enroll-org1-admin.sh
15. deploy org1-peer1 container
17. ./enroll-org0-orderer.sh
18. ./enroll-org0-admin.sh
19. ./create-genesis-block.sh;
20. deploy org0-orderer container;

