<?xml-stylesheet type="text/xsl" href="freemapV5.xslt"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <xsl:include href="menu.xslt" />
  <xsl:include href="contour.xslt" />
  <xsl:include href="osmmapper.xslt" />
  <xsl:include href="building.xslt" />
  <xsl:include href="highway.xslt" />
  <xsl:include href="railway.xslt" />
  <xsl:include href="aeroway.xslt" />
  <xsl:include href="landuse.xslt" />
  <xsl:include href="water.xslt" />
  <xsl:include href="protected.xslt" />
  <xsl:include href="admin.xslt" />
  <xsl:include href="place.xslt" />
  <xsl:include href="markedtrail.xslt" />
  <xsl:include href="tourism.xslt" />
  <xsl:include href="ski.xslt" />
  <xsl:include href="natural.xslt" />
  <xsl:include href="aerial.xslt" />
  <xsl:include href="barrier.xslt" />
  <xsl:include href="poi.xslt" />
<xsl:template match="/">

<rendertheme xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://mapsforge.org/renderTheme https://raw.githubusercontent.com/mapsforge/mapsforge/master/resources/renderTheme.xsd" version="5" map-background-outside="#EEEEEE" map-background="#F8F8F8">

  <xsl:call-template name="menu"/>
  <xsl:call-template name="poi"/>
  <xsl:call-template name="landuse"/>
  <xsl:call-template name="waterbodies"/>
  <xsl:call-template name="waterways"/>
  <xsl:call-template name="protected"/>
  <xsl:call-template name="aeroway"/>
  <xsl:call-template name="buildings"/>
  <xsl:call-template name="highway_area"/>
  <xsl:call-template name="highway"/>
  <xsl:call-template name="railway_tunnel"/>
  <xsl:call-template name="railway_no_tunnel"/>
  <xsl:call-template name="railway_node"/>
  <xsl:call-template name="admin"/>
  <xsl:call-template name="contour_labels"/>
  <xsl:call-template name="contour_lines"/>

  <rule e="way" k="power" v="*">
    <rule e="way" k="power" v="line" zoom-min="13">
      <line stroke="#80000000" stroke-width="1.2" scale="none"/>
      <rule e="way" k="*" v="*" zoom-min="14" zoom-max="16">
        <lineSymbol src="file:/symbols/way_powerline.svg" position="center" repeat="true" symbol-width="12" repeat-gap="50" priority="-100"/>
      </rule>
      <rule e="way" k="*" v="*" zoom-min="17">
        <lineSymbol src="file:/symbols/way_powerline.svg" position="center" repeat="true" symbol-width="16" repeat-gap="35" priority="-100"/>
      </rule>
    </rule>
    <rule e="way" k="power" v="minor_line" zoom-min="16">
      <line stroke="#80000000" stroke-width="1" scale="none"/>
      <lineSymbol src="file:/symbols/way_powerline.svg" position="center" repeat="true" symbol-width="13" repeat-gap="45" priority="-100"/>
    </rule>   
  </rule>
  <rule e="node" k="power" v="*">
    <rule e="any" k="power" v="tower" zoom-min="16">
      <symbol src="file:/symbols/power-tower.svg" symbol-width="14" priority="-20"/>
    </rule>
    <rule e="any" k="power" v="pole" zoom-min="18">
      <circle radius="3" scale-radius="false" fill="#000000" />
    </rule>  
  </rule>

  <xsl:call-template name="tourism_information"/>
  <xsl:call-template name="places"/>
  <xsl:call-template name="natural_nodes"/>
  <xsl:call-template name="pistes"/>
  <xsl:call-template name="aerial"/>

  <xsl:call-template name="skitrails"/>
  <xsl:call-template name="cycletrails"/>
  <xsl:call-template name="mtbtrails"/>
  <xsl:call-template name="cycle-nomark"/>
  <xsl:call-template name="hikinglocaltrails"/>
  <xsl:call-template name="hikingtrails"/>
  <xsl:call-template name="ksttrails"/>
  <xsl:call-template name="naucho"/>
  <xsl:call-template name="sac-scale"/>
  <xsl:call-template name="mtb-scale"/>

  <xsl:call-template name="barrier"/>


  <xsl:call-template name="fixme"/>
</rendertheme>

</xsl:template>
</xsl:stylesheet>
