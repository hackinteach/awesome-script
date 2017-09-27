#!/bin/bash
curl -s https://en.wikipedia.org/wiki/World_Happiness_Report?action=raw | grep "^.*flag.[A-Z]" | sed 's/.*flag.//g' | sed 's/\}.*//g'
# rm wiki.txt out.txt
# rm out.txt
