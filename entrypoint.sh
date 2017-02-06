#!/bin/bash
cd /project/target
cp /project/answer/* .

node_modules/mocha/bin/mocha $@ --reporter list