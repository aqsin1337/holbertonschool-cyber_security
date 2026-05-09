#!/bin/bash
echo "$1: $(sha256sum $1 | grep -o $2 > /dev/null && echo OK || echo FAIL)"
