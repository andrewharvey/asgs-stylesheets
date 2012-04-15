About
=============
This repository contains carto stylesheets (with one ported to a QGIS style) for
ASGS structures. It depends on a backend PostgreSQL database as produced from
https://github.com/andrewharvey/asgs2pgsql

License
=============
All files in this repository, except configure.py, are licensed [CC0](http://creativecommons.org/publicdomain/zero/1.0/).

Configuration
=============
To prepare these stylesheets you can either use the `tilelite.sh <layername>`
(where layername is for instance mb) script which fills in PostgreSQL connection
details, compiles the mml/mms to xml and then starts serving the layer locally
using TileLite, or you can go through the steps from `tilelite.sh` yourself.

You will also need to have the ASGS loaded into PostgreSQL either by using the
scripts from https://github.com/andrewharvey/asgs2pgsql or the dump file which
asgs2pgsql produces.

Fonts
=============
I encountered problems with fonts when using TileLite, TileCache and TileStache.

This is probably because the Debain build of Mapnik uses a font path of
`/usr/share/fonts/truetype/ttf-dejavu`. You can run `mapnik-config --fonts` to
check the current path. I found setting this to `/usr/share/fonts/truetype`
worked, either by changing this at Mapnik build time or by editing
`/usr/share/pyshared/mapnik2/paths.py`.
