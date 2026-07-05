# (A2:2021) - Cryptographic Failures - Scripting

## Description
This project focuses on identifying and decoding insecure cryptographic implementations, specifically targeting the WebSphere XOR encoding mechanism. This is part of the OWASP Top 10 (A2:2021 - Cryptographic Failures) training program at Holberton School.

The objective is to create a Bash script that automates the decryption of WebSphere `{xor}` prefixed hashes into their original plaintext format without using forbidden operators (`&&`, `||`, `;`, or backticks).

## Requirements
* All files are executed on Kali Linux.
* The script must start with `#!/bin/bash`.
* Code must comply with the Betty style guidelines.

## Usage
To decode a WebSphere XOR hash, run the script with the hash as the first argument:

```bash
./1-xor_decoder.sh {xor}KzosKw==
