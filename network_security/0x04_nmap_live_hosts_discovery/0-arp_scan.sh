#!/usr/bin/env bash
#
# Scans a subnetwork to discover live hosts using an ARP scan (nmap).
# Usage: sudo ./0-arp_scan.sh <subnetwork>

if [[ "$EUID" -ne 0 ]]; then
    echo "Error: this script must be run as root (or with sudo)." >&2
    exit 1
fi

if [[ -z "$1" ]]; then
    echo "Usage: $0 <subnetwork>" >&2
    exit 1
fi

nmap -PR -sn -n "$1"
