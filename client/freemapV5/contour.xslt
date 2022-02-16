<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="contour_labels">
<rule cat="contours" e="way" k="contour_ext" v="*">
  <rule e="way" k="contour_ext" v="elevation_major" zoom-min="13" zoom-max="14">
    <pathText k="ele" font-size="7" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="2" repeat="true" repeat-gap="250" priority="-100"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_major" zoom-min="15">
    <pathText k="ele" font-size="9" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="2" repeat="true" repeat-gap="300" priority="-100"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_medium" zoom-min="15">
    <pathText k="ele" font-size="8" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="2" repeat="true" repeat-gap="350" priority="-100"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_minor" zoom-min="18">
    <pathText k="ele" font-size="7" font-style="bold" fill="#A86868" stroke="#FFFFFF" stroke-width="2" repeat="true" repeat-gap="500" priority="-100"/>
  </rule>
</rule>
</xsl:template>

<xsl:template name="contour_lines">
<rule cat="contours" e="way" k="contour_ext" v="*">
  <rule e="way" k="contour_ext" v="elevation_major" zoom-min="11" zoom-max="13">
    <line stroke="#FFA86868" stroke-width="0.4" stroke-linecap="butt" scale="none"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_medium" zoom-min="12" zoom-max="13">
    <line stroke="#FFC27878" stroke-width="0.3" stroke-linecap="butt" scale="none"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_major" zoom-min="14">
    <line stroke="#FFA86868" stroke-width="0.7" stroke-linecap="butt" scale="none"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_medium" zoom-min="14">
    <line stroke="#FFC27878" stroke-width="0.5" stroke-linecap="butt" scale="none"/>
  </rule>
  <rule e="way" k="contour_ext" v="elevation_minor" zoom-min="14">
    <line stroke="#FFDB8888" stroke-width="0.3" stroke-linecap="butt" scale="none"/>
  </rule>
</rule>

</xsl:template>
</xsl:stylesheet>
