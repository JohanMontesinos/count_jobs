#!/usr/bin/env bash
keyword=${1:-}
print_count(){
    local keyword=$1
    local url=$2
    local action=$3
    local country=$4
    local url_get="${url}${action}?q=${keyword}&l="
    local count=$(curl -L -s "$url_get" \
           | tr '\n' '\r'\
           | sed -r -n -n 's/.*searchCount">[\r ]*([^<]+)<\/div>.*/\1/p'\
	   | sed -r 's/1[^0-9]+([1-9]|10)//;s/[^0-9]//g')
    printf "%14u %-20s\n" "$count" "$country"
}
export -f print_count
xargs -L 1 -I {} -P 4 bash -c "print_count ${keyword} {}" < indeed_countries.txt | sort -nr
