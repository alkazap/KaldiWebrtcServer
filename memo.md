### Requirements:
- CUDA 10 (?)
- Kaldi
- Python 3.7

### Copy model files
* Make file system
```
mkdir data && cd data && \
mkdir models && cd models && \
mkdir streaming && cd streaming && \
mkdir exp && cd exp && \
mkdir chain_rvb && cd chain_rvb && \
mkdir tdnn1n_rvb_online && cd tdnn1n_rvb_online && \
mkdir ivector_extractor && cd ivector_extractor && pwd && cd .. && \
mkdir conf && cd conf && pwd && cd ../.. && \
mkdir tree_a && cd tree_a && \
mkdir graph_tgsmall && cd graph_tgsmall && pwd && \
cd /home/alena/data && tree
```
* Output
```
/home/alena/data/models/streaming/exp/chain_rvb/tdnn1n_rvb_online/ivector_extractor
/home/alena/data/models/streaming/exp/chain_rvb/tdnn1n_rvb_online/conf
/home/alena/data/models/streaming/exp/chain_rvb/tree_a/graph_tgsmall
.
└── models
    └── streaming
        └── exp
            └── chain_rvb
                ├── tdnn1n_rvb_online
                │   ├── conf
                │   └── ivector_extractor
                └── tree_a
                    └── graph_tgsmall

9 directories, 0 files
```
* Copy files
```
scp alena@caviar.local:/data8t/models/streaming/exp/chain_rvb/tdnn1n_rvb_online/final.mdl /home/alena/data/models/streaming/exp/chain_rvb/tdnn1n_rvb_online
scp alena@caviar.local:/data8t/models/streaming/exp/chain_rvb/tree_a/graph_tgsmall/\{HCLG.fst,words.txt\} /home/alena/data/models/streaming/exp/chain_rvb/tree_a/graph_tgsmall
scp alena@caviar.local:/data8t/models/streaming/exp/chain_rvb/tdnn1n_rvb_online/conf/\{mfcc.conf,ivector_extractor.fixed.conf,splice.conf,online_cmvn.conf\} /home/alena/data/models/streaming/exp/chain_rvb/tdnn1n_rvb_online/conf
scp alena@caviar.local:/data8t/models/streaming/exp/chain_rvb/tdnn1n_rvb_online/ivector_extractor/\{final.mat,global_cmvn.stats,final.dubm,final.ie\} /home/alena/data/models/streaming/exp/chain_rvb/tdnn1n_rvb_online/ivector_extractor
tree
```
* Output
```
.
└── models
    └── streaming
        └── exp
            └── chain_rvb
                ├── tdnn1n_rvb_online
                │   ├── conf
                │   │   ├── ivector_extractor.fixed.conf
                │   │   ├── mfcc.conf
                │   │   ├── online_cmvn.conf
                │   │   └── splice.conf
                │   ├── final.mdl
                │   └── ivector_extractor
                │       ├── final.dubm
                │       ├── final.ie
                │       ├── final.mat
                │       └── global_cmvn.stats
                └── tree_a
                    └── graph_tgsmall
                        ├── HCLG.fst
                        └── words.txt

9 directories, 11 files
```
