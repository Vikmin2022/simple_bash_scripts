#!/bin/bash

website="http://google.com"

#
if curl --output /dev/null --silent --head --fail "$website"
then
   echo "Website is  up"
else
    echo  "Website is  down"
fi    
