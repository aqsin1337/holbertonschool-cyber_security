#!/bin/bash
# Decode WebSphere XOR encoded hashes cleanly

INPUT="$1"
CLEAN_HASH=$(echo "$INPUT" | sed 's/^{xor}//')

echo "$CLEAN_HASH" | base64 -d 2>/dev/null | tr '\000' '\137' > /tmp/decoded_bytes

len=$(wc -c < /tmp/decoded_bytes)
index=0

while [ "$index" -lt "$len" ]
do
    char=$(head -c $((index + 1)) /tmp/decoded_bytes | tail -c 1)
    printf -v ascii '%d' "'$char"
    
    if [ "$ascii" -eq 95 ]
    then
        xor_result=0
    else
        xor_result=$((ascii ^ 95))
    fi
    
    printf "\\$(printf '%03o' "$xor_result")"
    index=$((index + 1))
done
echo ""
rm -f /tmp/decoded_bytes
