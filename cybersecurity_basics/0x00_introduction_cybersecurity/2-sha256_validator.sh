#!/bin/bash
echo "$1: $(sha256sum $1 | grep -wo $2 | wc -l | sed 's/1/OK/;s/0/FAIL/')"
