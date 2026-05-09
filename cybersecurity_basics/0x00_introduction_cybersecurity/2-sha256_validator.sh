#!/bin/bash
echo "$1: $(echo $(sha256sum $1 | cut -d' ' -f1) | grep -o $2 > /dev/null && echo OK || echo FAIL)"
