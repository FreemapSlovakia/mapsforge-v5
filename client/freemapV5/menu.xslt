<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="menu">
        <stylemenu id="fmskmenu" defaultvalue="topo" defaultlang="sk">
        <layer id="osmmapper" enabled="false" visible="false">
            <name lang="en" value="OSM mapper" />
            <name lang="sk" value="OSM mapper" />
            <cat id="osmmapper" />
        </layer>
        <layer id="contours" enabled="true" visible="false">
            <name lang="en" value="Contours" />
            <name lang="sk" value="Vrstevnice" />
            <cat id="contours" />
        </layer>
        <layer id="hiking" enabled="true" visible="false">
            <name lang="en" value="Hiking trails" />
            <name lang="sk" value="Turistické značky" />
            <cat id="hiking" />
            <cat id="hikingcycle" />
        </layer>
        <layer id="hikinglocal" enabled="false" visible="false">
            <name lang="en" value="Hiking trails local" />
            <name lang="sk" value="Turistické značky miestne" />
            <cat id="hikinglocal" />
            <cat id="hikingcycle" />
        </layer>
<!--        <layer id="hikingkst" enabled="false" visible="false">
            <name lang="en" value="Only KST hiking trails" />
            <name lang="sk" value="Iba KST trasy" />
            <cat id="hikingkst" />
            <cat id="hikingcycle" />
        </layer> -->
        <layer id="naucho" enabled="false" visible="false">
            <name lang="en" value="Edu trails" />
            <name lang="sk" value="Náučné chodníky" />
            <cat id="naucho" />
        </layer>
        <layer id="cycle" enabled="true" visible="false">
            <name lang="en" value="Cycle trails" />
            <name lang="sk" value="Cyklo značky" />
            <cat id="cycle" />
            <cat id="hikingcycle" />
        </layer>
        <layer id="ski" enabled="false" visible="false">
            <name lang="en" value="Ski trails" />
            <name lang="sk" value="Lyžiarske značky" />
            <cat id="ski" />
        </layer>
        <layer id="boundaries" enabled="true" visible="false">
            <name lang="en" value="Boundaries" />
            <name lang="sk" value="Hranice" />
            <cat id="boundaries" />
        </layer>
        <layer id="sac-scale" enabled="false" visible="false">
            <name lang="en" value="SAC scale" />
            <name lang="sk" value="SAC" />
            <cat id="sac-scale" />
        </layer>
        <layer id="mtb-scale" enabled="false" visible="false">
            <name lang="en" value="MTB scale" />
            <name lang="sk" value="MTB stupnica" />
            <cat id="mtb-scale" />
        </layer>
        <layer id="sport" enabled="false" visible="false">
            <name lang="en" value="Sport POI" />
            <name lang="sk" value="Športové POI" />
            <cat id="sport" />
        </layer>
        <layer id="shop" enabled="false" visible="false">
            <name lang="en" value="Shop POI" />
            <name lang="sk" value="Obchody" />
            <cat id="shop" />
        </layer>
        <layer id="accommodation" enabled="false" visible="false">
            <name lang="en" value="Accommodation POI" />
            <name lang="sk" value="Ubytovanie" />
            <cat id="accommodation" />
        </layer>
        <layer id="food" enabled="true" visible="false">
            <name lang="en" value="Food POI" />
            <name lang="sk" value="Stravovanie" />
            <cat id="food" />
        </layer>
        <layer id="trailnum" enabled="false" visible="false">
            <name lang="en" value="Trails numbers" />
            <name lang="sk" value="Čísla TZT/CZT" />
            <cat id="trailnum" />
        </layer>
        <layer id="place" enabled="true" visible="false">
            <name lang="en" value="Places" />
            <name lang="sk" value="Obce/Mestá" />
            <cat id="place" />
        </layer>
        <layer id="protect_area" enabled="false" visible="false">
            <name lang="en" value="Protected areas/parks" />
            <name lang="sk" value="Chránené územia" />
            <cat id="protect_area" />
        </layer>
        <layer id="topo" visible="true">
            <name lang="en" value="Topo" />
            <name lang="sk" value="Topo" />
            <cat id="all" />
            <cat id="topo" />
            <cat id="topo_common" />
            <cat id="topo_icons" />
            <cat id="landuse" />
            <cat id="highway" />
            <cat id="building" />
            <cat id="waterway" />
            <cat id="boundaries" />
            <cat id="place" />
            <overlay id="contours" />
            <overlay id="hiking" />
            <overlay id="hikinglocal" />
            <overlay id="hikingkst" />
            <overlay id="sac-scale" />
            <overlay id="naucho" />
            <overlay id="cycle" />
            <overlay id="mtb-scale" />
            <overlay id="trailnum" />
            <overlay id="ski" />
            <overlay id="protect_area" />
            <overlay id="food" />
            <overlay id="sport" />
            <overlay id="shop" />
            <overlay id="accommodation" />
            <overlay id="osmmapper" />
        </layer>
        <layer id="default" visible="true">
            <name lang="en" value="Default" />
            <name lang="sk" value="Všeobecná" />
            <cat id="all" />            
            <cat id="default" />
            <cat id="landuse" />
            <cat id="highway" />
            <cat id="building" />
            <cat id="waterway" />
            <cat id="boundaries" />
            <cat id="place" />
            <overlay id="food" />
            <overlay id="sport" />
            <overlay id="shop" />
            <overlay id="accommodation" />
            <overlay id="osmmapper" />
        </layer>
        <layer id="over" visible="true">
            <name lang="en" value="Overlay" />
            <name lang="sk" value="Overlay" />
            <cat id="overlay" />
            <cat id="topo_icons" />
            <overlay id="hiking" />
            <overlay id="hikinglocal" />
            <overlay id="hikingkst" />
            <overlay id="naucho" />
            <overlay id="cycle" />
            <overlay id="trailnum" />
            <overlay id="ski" />
            <overlay id="food" />            
            <overlay id="sport" />
            <overlay id="shop" />
            <overlay id="accommodation" />
            <overlay id="place" />
            <overlay id="boundaries" />
            <overlay id="osmmapper" />
        </layer>
        </stylemenu>
    </xsl:template>

</xsl:stylesheet>
