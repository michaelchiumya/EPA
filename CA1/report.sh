#!/bin/sh

echo 'Hello from the container'

echo "Machine Memory Details"

free -t -m | grep "Total" | awk '{print "Memory :$2" MB";
print "Used Memory: "$3" MB";
print "Free Memory" "$4" MB";

}'