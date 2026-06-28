#!/bin/bash
curl -s -H "Host: $1" -H "Content-Type: application/x-www-form-urlencoded" -d "$3" "$2"
