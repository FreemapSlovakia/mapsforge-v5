<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:template name="contour_labels">
        <rule cat="contours" e="way" k="contour_ext" v="*">
            <rule e="way" k="contour_ext" v="elevation_major" zoom-min="13">
                <pathText k="ele" font-size="8" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="2" display="always"/>
            </rule>
            <rule e="way" k="contour_ext" v="elevation_medium" zoom-min="15">
                <pathText k="ele" font-size="7" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="2" />
            </rule>
            <rule e="way" k="contour_ext" v="elevation_minor" zoom-min="17">
                <pathText k="ele" font-size="7" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="2"/>
            </rule>
        </rule>
    </xsl:template>

    <xsl:template name="contour_lines">
        <rule cat="contours" e="way" k="contour_ext" v="elevation_major" zoom-min="11" zoom-max="14">
            <line stroke="#FFA86868" stroke-width="0.4" stroke-linecap="butt"  scale="none"/>
        </rule>
        <rule cat="contours" e="way" k="contour_ext" v="elevation_medium" zoom-min="12" zoom-max="14">
            <line stroke="#FFC27878" stroke-width="0.3" stroke-linecap="butt"  scale="none"/>
        </rule>
        <rule cat="contours" e="way" k="contour_ext" v="elevation_major" zoom-min="15">
            <line stroke="#FFA86868" stroke-width="0.7" stroke-linecap="butt"  scale="none"/>
        </rule>
        <rule cat="contours" e="way" k="contour_ext" v="elevation_medium" zoom-min="15">
            <line stroke="#FFC27878" stroke-width="0.5" stroke-linecap="butt"  scale="none"/>
        </rule>
        <rule cat="contours" e="way" k="contour_ext" v="elevation_minor" zoom-min="15">
            <line stroke="#FFDB8888" stroke-width="0.3" stroke-linecap="butt"  scale="none"/>
        </rule>
    </xsl:template>

</xsl:stylesheet>
