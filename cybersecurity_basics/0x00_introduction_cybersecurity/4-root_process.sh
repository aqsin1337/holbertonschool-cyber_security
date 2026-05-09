#!/bin/bash
ps -u $1 -o user,pid,%cpu,%mem,vsz,rss,tty,stat,start,time,cmd | grep -vE "^\S+ +\S+ +\S+ +\S+ +0 +0 "
