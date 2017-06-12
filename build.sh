#!/bin/bash
cd /project/target
if [ -f package.json ]; then
	npm install --max-old-space-size=750
fi