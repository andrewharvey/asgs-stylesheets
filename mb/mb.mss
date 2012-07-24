/* 
 * Author: Andrew Harvey <andrew.harvey4@gmail.com>
 * License: CC0 http://creativecommons.org/publicdomain/zero/1.0/
 * To the extent possible under law, the person who associated CC0
 * with this work has waived all copyright and related or neighboring
 * rights to this work.
 */

// white background (use #DBEEEE for blue ocean, or drop line for transparent)
Map { background-color: #FFFFFF; }

#mb {
  /* outline */
  line-color: #000000;
  line-width: 0.75;

  /* fill */
  [category='Residential'] {
    polygon-fill: #DDDDDD;
  }
  [category='Parkland'] {
    polygon-fill: #CEF7CA;
  }
  [category='Agricultural'] {
    polygon-fill: #EAD8BD;
  }
  [category='Commercial'] {
    polygon-fill: #F3D8D2;
  }
  [category='Educategoryion'] {
    polygon-fill: #F0F0D8;
  }
  [category='Industrial'] {
    polygon-fill: #DFD1D6;
  }
  [category='Water'] {
    polygon-fill: #B5D0D0;
  }
  [category='Transport'] {
    polygon-fill: #B6B591;
  }
  [category='Hospital/Medical'] {
    polygon-fill: #EBA4A4;
  }
  [category='Other'] {
    polygon-fill: #000000;
  }
}

