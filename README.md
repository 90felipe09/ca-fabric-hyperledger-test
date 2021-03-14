# ca-fabric-hyperledger-test

The topology of this network is represented by the image below:

![Network topology](https://hyperledger-fabric-ca.readthedocs.io/en/latest/_images/network_topology.png)

## How to execute

`docker-compose up`

## Terminology

The term bootstrap refers to a set of operations that are executed as soon as the service start.
 
## Pattern

Every service has a bootstrap shell script that automates it's initialization. Each script is stored in `scripts` directory under the specific service that it attends. Every service starts by going to `/home` (where the script is stored), gives permission to execute it and finally executes it.

## Services

### fabric-ca-tls

`docker-compose up fabric-ca-tls`

This node is a Certification Authority for TLS certificates. It'll generate certificates for every client to encrypt the content in the session OSI layer.

This service emits the certificates for each client on the specified volume on docker-compose. Each one of these certificates must be copied to other peers in order to grant them TLS encryption security.

The script `ca-tls-bootsrap.sh` starts the TLS server, initialize the path variables and:

- enroll the admin identity to perform the following operations;
- register the peer 1 from organization 1;
- register the peer 2 from organization 1;
- register the peer 1 from organization 2;
- register the peer 2 from organization 2;
- register the peer 1 from organization 0;

By specifying the environment variable `FABRIC_CA_SERVER_HOME`, it'll deploy it's certificate with the name `ca-cert.pem`.