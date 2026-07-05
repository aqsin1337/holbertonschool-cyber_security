#!/bin/bash
# Decode WebSphere XOR encoded hashes according to Betty style

INPUT="$1"
CLEAN_HASH=$(echo "$INPUT" | sed 's/^{xor}//')
BASE64_DECODED=$(echo "$CLEAN_HASH" | base64 -d 2>/dev/null)

len=${#BASE64_DECODED}
index=0

while [ "$index" -lt "$len" ]
do
    char=$(expr substr "$BASE64_DECODED" $((index + 1)) 1)
    if [ -z "$char" ]
    then
        ascii=0
    else
        printf -v ascii '%d' "'$char"
    fi
    xor_result=$((ascii ^ 95))
    printf "\\$(printf '%03o' "$xor_result")"
    index=$((index + 1))
done
echo ""
