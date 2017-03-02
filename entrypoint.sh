#!/bin/bash

cd /project/target

cp -r /project/answer/* .

mocha $@ --reporter list