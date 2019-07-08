Custom style for mapsforge applications (Locus Map, OruxMaps, ...)

## Installation

1. Compile the style:
```
xsltproc freemapV5.xslt > freemapV5.xml
```
2. Put `freemapV5` directory (without .xslt files) to 
    * Locus Map - `Locus/mapsVector/_themes`
    * OruxMaps - `oruxmaps/mapstyles`
    * other apps - search in app documentation/web page 


## Developing

To quickly see theme changes in Locus Map run:
```
xsltproc freemapV5.xslt > freemapV5.xml && adb push freemapV5.xml /sdcard/Locus/mapsVector/_themes/freemapV5/freemapV5.xml
```

Then re-select the theme in Locus.

