#!/bin/bash
cd /project/target
cp /project/answer/* .

mocha $@ --reporter list
