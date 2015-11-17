#/!bin/bash
# 01/11/2015 CZ: I can be sooo lazy ;-)

if [ -z "$1" ] 
then
    echo "No ip-address supplied. Starting on localhost"
    ip=127.0.0.1
else
    ip=$1
fi

hugo server -b $ip  --bind=$ip --buildDrafts --verbose --watch --theme=landing-page-hugo
