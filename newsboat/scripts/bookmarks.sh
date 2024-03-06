#!/bin/sh
# this is a simple example script that demonstrates how bookmarking plugins for newsbeuter are implemented
# (c) 2007 Andreas Krennmair
# (c) 2016 Alexander Batischev

url="$1"
title="$2"
description="$3"
feed_title="$4"


# echo -e "$url\t$title\t$description\t$feed_title" >> ~/.newsboat/bookmarks.txt
#
# #!/bin/sh

# [ "$#" -eq 0 ] && exit 1
# if [ -n $(command -v curl) ]; then
#   url=$(curl -sIL -o /dev/null -w '%{url_effective}' "$1")
# else  
#   url="$1"
# fi
# url=$(echo "${url}" | perl -p -e 's/(\?|\&)?utm_[a-z]+=[^\&]+//g;' -e 's/(#|\&)?utm_[a-z]+=[^\&]+//g;')
# title="$2"
# description="$3"

# grep -q "${url}\t${title}\t${description}" ~/.newsboat/bookmarks.txt || echo "${url}\t${title}\t${description}" >> ~/.newsboat/bookmarks.txt
echo -e "$url\t$title\t$description\t$feed_title" >> ~/.newsboat/bookmarks.txt
