#!/bin/bash

# set -eux
set -e
set -o pipefail

cd "$(git rev-parse --show-toplevel)"

TABLEAU_PROTO_DIR="./third_party/"
INDIR="./examples/helloworld/proto"
OUTDIR="./examples/helloworld/protoconf"

# remove OUTDIR
rm -rfv $OUTDIR
mkdir -p $OUTDIR

for item in "$INDIR"/* ; do
    echo "$item"
    if [ -f "$item" ]; then
        protoc \
        --go_out="$OUTDIR" \
        --go_opt=paths=source_relative \
        --proto_path="$INDIR" \
        --proto_path="$TABLEAU_PROTO_DIR" \
        "$item"
    fi
done