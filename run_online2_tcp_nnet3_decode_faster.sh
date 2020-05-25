#!/bin/bash
/home/alena/kaldi/src/online2bin/online2-tcp-nnet3-decode-faster \
  --mfcc-config=/home/alena/data/models/streaming/exp/chain_rvb/tdnn1n_rvb_online/conf/mfcc.conf \
  --ivector-extraction-config=/home/alena/data/models/streaming/exp/chain_rvb/tdnn1n_rvb_online/conf/ivector_extractor.conf \
  --frames-per-chunk=20 \
  --extra-left-context-initial=0 \
  --min-active=200 \
  --max-active=7000 \
  --beam=15.0 \
  --lattice-beam=6.0 \
  --acoustic-scale=1.0 \
  --endpoint.silence-phones="1:2:3:4:5:6:7:8:9:10" \
  --chunk-length=0.2 \
  --port-num=5050 \
  --samp-freq=16000 \
  /home/alena/data/models/streaming/exp/chain_rvb/tdnn1n_rvb_online/final.mdl \
  /home/alena/data/models/streaming/exp/chain_rvb/tree_a/graph_tgsmall/HCLG.fst \
  /home/alena/data/models/streaming/exp/chain_rvb/tree_a/graph_tgsmall/words.txt 
