#!/bin/bash
echo "$1: $(sha256sum $1 | grep -c $2 | sed 's/1/OK/;s/0/FAIL/')"
