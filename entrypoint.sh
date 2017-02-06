#!/bin/bash
cd /project/target
cp /project/answer/* .

node_modules/mocha/bin/mocha $@ --reporter list 1> /tmp/stdout.txt 2> /tmp/stderr.txt
node /parse_results.js $?