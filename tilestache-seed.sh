#!/bin/bash

source ./structures.sh

# tilestache-seed expects the bounds in WGS84 LL, if you have bounds in the OSM
# Slippy Map projection you can use this to transform those coordinates:
#     gdaltransform -s_srs '+proj=merc +a=6378137 +b=6378137 +lat_ts=0.0 +lon_0=0.0 +x_0=0.0 +y_0=0 +k=1.0 +units=m +nadgrids=@null +wktext +no_defs' -t_srs '+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs '
#     12570320.00 -5403474.50
#     17711958.00 -1636391.88

north="-14.55"
east="159.11"
south="-43.59"
west="112.91"

for i in $structures
do
  echo "$i..."
  nice tilestache-seed -c /etc/tilestache.cfg -l asgs-2011-$i -b $south $west $north $east {0..10}
done
