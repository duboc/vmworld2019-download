#!/bin/bash
cat $1|while read line;do
    wget --referer http://www.vmware.com  https://s3-us-west-1.amazonaws.com/vmworld-usa-2019/$line.mp4 -O $line.mp4;
    if [ "$?" -ne "0" ]; then
	 rm $line;
    fi
    sleep 4;
done
