#!/bin/bash
set -x

YOUR_KEY=
curl -s -H X-0x0ACE-Key:$YOUR_KEY http://5.9.247.121/d34dc0d3 > web
start=$(cat web | grep -Po '\[\d+' | sed s/\\[//g)
end=$(cat web | grep -Po '\d+\]' | sed s/\\]//g)
ver=$(grep -Po '[a-zA-Z0-9/,\.\+\-]+==' web)
data=$(sed -n -r "/\<${start}\>/,/\<${end}\>/p" p | head -n-1 | tail -n+2 | tr '\n' ',' | sed s/,$//g)
curl -X POST --data "verification=$ver&solution=$data" -H X-0x0ACE-Key:$YOUR_KEY http://5.9.247.121/d34dc0d3
