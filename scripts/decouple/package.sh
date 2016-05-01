#!/usr/bin/env bash

ROOT="scripts/decouple/"

touch "$1.js"

INPUT=`cat "hello-world.js"`

MOD_INPUT=`node "$ROOT/modify-hello-world" "$INPUT"`

node "$ROOT/grab" "$MOD_INPUT" > "$1.js"

INPUT=`cat "README.md"`

MOD_INPUT=`node "$ROOT/modify-readme" "$INPUT"`

node "$ROOT/grab" "$MOD_INPUT" > "README.md"
