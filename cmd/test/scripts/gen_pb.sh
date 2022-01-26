#!/bin/bash

# set -eux
set -e
set -o pipefail

cd "$(git rev-parse --show-toplevel)"

TABLEAU_PROTO_DIR="./third_party/tableau/proto"
IN_DIR="./cmd/test/protoconf"
OUT_DIR="./cmd/test/testpb"

# remove OUT_DIR
rm -rfv $OUT_DIR
mkdir -p $OUT_DIR

for item in "$IN_DIR"/* ; do
    echo "$item"
    if [ -f "$item" ]; then
        protoc \
        --go_out="$OUT_DIR" \
        --go_opt=paths=source_relative \
        --proto_path="$IN_DIR" \
        --proto_path="$TABLEAU_PROTO_DIR" \
        "$item"
    fi
done