#!/bin/bash
curl -s -X POST -H "Host: $1" -H "Content-Type: application/json" -d "$3" "$2"
