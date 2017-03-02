#!/usr/bin/env bash
print_count(){
    keyword=$1
    url=$2
    action=$3
    country=$4
    url_get="$url$action?q=$keyword&l="
    count=`curl -L -s $url_get \
           | sed -r -n 's/.*searchCount">(.*)<\/div>.*/\1/p' \
           | sed -r 's/1[^0-9]+([1-9]|10)//;s/[^0-9]//g'`
    printf "%14u %-20s\n" "$count" $country
}
export -f print_count
cat indeed_countries.txt | xargs -L 1 -I {} -P 4 bash -c "print_count $1 {}" | sort -nr
