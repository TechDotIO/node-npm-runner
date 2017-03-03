#!/bin/bash
cd /project/target
if [ -f package.json ]; then
	npm install
fi