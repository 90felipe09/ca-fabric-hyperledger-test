#!/bin/bash
CLIENT_DIR=./client/org0
configtxgen -profile OneOrgOrdererGenesis -outputBlock $CLIENT_DIR/orderer/genesis.block -channelID syschannel
configtxgen -profile OneOrgChannel -outputCreateChannelTx $CLIENT_DIR/orderer/channel.tx -channelID mychannel
