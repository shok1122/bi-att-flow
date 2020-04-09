#!/usr/bin/env bash

DATA_DIR=$HOME/data
mkdir $DATA_DIR

# Download SQuAD
SQUAD_DIR=$DATA_DIR/squad
mkdir -p $SQUAD_DIR
if [ ! -f $SQUAD_DIR/train-v1.1.json ]; then
	wget https://rajpurkar.github.io/SQuAD-explorer/dataset/train-v1.1.json -O $SQUAD_DIR/train-v1.1.json
fi
if [ ! -f $SQUAD_DIR/dev-v1.1.json ]; then
	wget https://rajpurkar.github.io/SQuAD-explorer/dataset/dev-v1.1.json -O $SQUAD_DIR/dev-v1.1.json
fi


# Download CNN and DailyMail
# Download at: http://cs.nyu.edu/~kcho/DMQA/


# Download GloVe
GLOVE_DIR=$DATA_DIR/glove
mkdir -p $GLOVE_DIR
if [ ! -f $GLOVE_DIR/glove.6B.zip ]; then
	wget http://nlp.stanford.edu/data/glove.6B.zip -O $GLOVE_DIR/glove.6B.zip
fi
unzip $GLOVE_DIR/glove.6B.zip -d $GLOVE_DIR

# Download NLTK (for tokenizer)
# Make sure that nltk is installed!
python3 -m nltk.downloader -d $HOME/nltk_data punkt

