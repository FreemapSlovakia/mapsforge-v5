<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="aerial">
<rule cat="topo_icons" e="way" k="aerialway" v="*">
  <line stroke="#202020" stroke-width="0.6" scale="none" stroke-linecap="butt"/>
  <rule e="way" k="*" v="*" zoom-max="14">
    <line stroke="#202020" stroke-width="7" scale="none" stroke-dasharray="1,20" stroke-linecap="butt"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="15">
    <line stroke="#202020" stroke-width="10" scale="none" stroke-dasharray="1,40" stroke-linecap="butt"/>
  </rule>
  <rule e="way" k="aerialway" v="drag_lift|j-bar|t-bar|rope_tow" zoom-min="15">
      <lineSymbol src="file:/symbols/drag_lift.svg" symbol-width="20" repeat="true" repeat-start="5" repeat-gap="200"/>
  </rule>
  <rule e="way" k="aerialway" v="cable_car" zoom-min="15">
      <lineSymbol src="file:/symbols/cable_car.svg" symbol-width="20" repeat="true" repeat-start="5" repeat-gap="200"/>
  </rule>
  <rule e="way" k="aerialway" v="chair_lift" zoom-min="15">
      <lineSymbol src="file:/symbols/chair_lift.svg" symbol-width="20" repeat="true" repeat-start="5" repeat-gap="200"/>
  </rule>
  <rule e="way" k="aerialway" v="gondola" zoom-min="15">
      <lineSymbol src="file:/symbols/gondola.svg" symbol-width="20" repeat="true" repeat-start="5" repeat-gap="200"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="15">
      <pathText k="name" dy="2" font-style="bold" font-size="10" fill="#606060" stroke="#ffffff" stroke-width="3"/>
  </rule>
</rule>

</xsl:template>
</xsl:stylesheet>