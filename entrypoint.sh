#!/bin/bash

set -e

if [ "$#" -ne 2 ]; then
    echo "Usage: pgs3load s3://url postgres://user:pass@host/db"
    exit 1
fi

s3 cat $1 | psql $2