#!/bin/bash
branch=ntwk-calibration
user=psdz
#user=muse-01
miner_ip=192.168.11.48
iner_ip=192.168.0.30
pre1="true" 
pre2="true"
commit="true" 
gpu="false"
#gpu="true"

rm -rf /lotus_data/.lotus*
./get_api_token.sh $user $miner_ip && \
./update_lotus.sh $branch && \
./gen_start_worker.py $pre1 $pre2 $commit $gpu
cd ~
./start_worker.sh
