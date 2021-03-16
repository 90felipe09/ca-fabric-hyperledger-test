#!/bin/bash
CLIENT_DIR=./client/org0
configtxgen -profile TwoOrgsOrdererGenesis -outputBlock $CLIENT_DIR/orderer/genesis.block -channelID syschannel
configtxgen -profile TwoOrgsChannel -outputCreateChannelTx $CLIENT_DIR/orderer/channel.tx -channelID mychannel
