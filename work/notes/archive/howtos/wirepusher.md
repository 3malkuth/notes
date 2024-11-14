# wirepusher.com

* https://play.google.com/store/apps/details?id=com.mrivan.wirepusher

* App that pushes notifications to Android Device from bash script (using curl)
----
#!/bin/bash
title="$(echo -ne "$1" | hexdump -v -e '/1 "%02x"' | sed 's/\(..\)/%\1/g')"
msg="$(echo -ne "$2" | hexdump -v -e '/1 "%02x"' | sed 's/\(..\)/%\1/g')"
key=PqMKmpnkj
curl "https://wirepusher.com/send?id=${key}&title=${title}&message=${msg}&type=YourCustomType"
----
