# Complex network on cloud

```
ec2-org0/
├── tls/
|    └── ca/ 
└── org0
     ├── ca/
     └── orderer/
```

```
ec2-org1/
└── org1
     ├── ca/
     └── peer1/ 
```

```
ec2-org2/
└── org2
     ├── ca/
     └── peer1/ 
```

## Step by step configuration:

1. Make a copy of the orgX-instance directory for each EC2 instance in cloud;
2. Read the readme.md in each directory;