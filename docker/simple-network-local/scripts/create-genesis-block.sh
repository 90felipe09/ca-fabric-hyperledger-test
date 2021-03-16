#!/bin/bash
CLIENT_DIR=./client/org0
configtxgen -profile OrgsOrdererGenesis -outputBlock $CLIENT_DIR/orderer/genesis.block -channelID syschannel
configtxgen -profile OrgsChannel -outputCreateChannelTx $CLIENT_DIR/orderer/channel.tx -channelID mychannel
