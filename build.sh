#!/bin/bash

cd /project/target
if [ -f package.json ]; then
    max_memory=${MAX_ALLOWED_MEMORY:-750}
    npm install --max-old-space-size=${max_memory}
fi
