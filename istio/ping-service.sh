#! /bin/bash

while true; do
  curl -s http://localhost/hello
  echo ""
  sleep 1
done

exit 0
