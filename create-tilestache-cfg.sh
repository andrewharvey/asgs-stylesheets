#!/bin/bash

source ./structures.sh

for i in $structures
do
  case "$i" in
    mb)
      buffer=0
      ;;
    *)
      buffer=64
  esac

  echo "\"asgs-2011-$i\":"
  echo "{"
  echo "  \"provider\":"
  echo "  {"
  echo "    \"name\": \"mapnik\","
  echo "    \"mapfile\": \"/path/to/your/stylesheets/asgs_2011/$i.xml\""
  echo "  },"
  echo "  \"metatile\":"
  echo "  {"
  echo "    \"rows\": 4,"
  echo "    \"columns\": 4,"
  echo "    \"buffer\": $buffer"
  echo "  }"
  echo "},"
done

