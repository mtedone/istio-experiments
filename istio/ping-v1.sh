#! /bin/bash

while true; do
  curl -s http://localhost/hello
  echo ""
  sleep 2
done

exit 0
