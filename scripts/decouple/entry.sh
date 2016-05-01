#!/usr/bin/env bash

# ROOT="scripts/decouple/"



#!/usr/bin/env bash

ROOT="scripts/decouple/"

npm run package:$1

INPUT=`cat "$1.js"`

MOD_INPUT=`node "$ROOT/modify-hi-dude" "$INPUT"`

node "$ROOT/grab" "$MOD_INPUT" > "$1-dist.js"
