#!/bin/bash
# Decode WebSphere XOR encoded hashes

INPUT="$1"
CLEAN_HASH=$(echo "$INPUT" | sed 's/^{xor}//')
BASE64_DECODED=$(echo "$CLEAN_HASH" | base64 -d 2>/dev/null)

index=0
while [ $index -lt ${#BASE64_DECODED} ]
do
    char="${BASE64_DECODED:$index:1}"
    printf -v ascii '%d' "'$char"
    xor_result=$((ascii ^ 95))
    printf "\\$(printf '%03o' "$xor_result")"
    index=$((index + 1))
done
echo ""
