#!/bin/bash

DICTIONARY="/usr/share/dict/words"

# This was the old way and too complicated
#
#POSSIBLE_WORDS=$(wc --lines $DICTIONARY | cut --fields=1 --delimiter=" ")
#RANDOM_NUMBER=$(shuf --input-range=1-$POSSIBLE_WORDS --head-count=1)
#
#sed "${RANDOM_NUMBER}q;d" $DICTIONARY

# Actually read the manpage for 'shuf' and found a better way

shuf --head-count=1 $DICTIONARY 
