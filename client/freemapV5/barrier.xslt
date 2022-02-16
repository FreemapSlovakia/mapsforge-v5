<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="barrier">
<!-- line barriers -->
<rule e="way" k="barrier" v="*" zoom-min="15">
  <rule e="way" k="barrier" v="fence">
    <rule cat="overlay" e="way" k="*" v="*">
      <line stroke="#ffffff" stroke-width="2" stroke-linecap="butt" scale="none"/>
    </rule>
    <line stroke="#000000" stroke-width="0.5" stroke-linecap="butt" scale="none"/>
    <line stroke="#555555" stroke-dasharray="1,2,1,8" stroke-width="3" stroke-linecap="butt"  scale="none"/>
  </rule>
  <rule e="way" k="barrier" v="wall">
    <rule e="way" k="*" v="*" zoom-max="16">
      <rule cat="overlay" e="way" k="*" v="*">
        <line stroke="#ffffff" stroke-width="2" stroke-linecap="butt" scale="none"/>
      </rule>
      <line stroke="#686868" stroke-width="1" stroke-linecap="butt" scale="none"/>
      <line stroke="#686868" stroke-dasharray="3,4,3,8" stroke-width="2" stroke-linecap="butt"  scale="none"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="17">
      <rule cat="overlay" e="way" k="*" v="*">
        <line stroke="#ffffff" stroke-width="3" stroke-linecap="butt" scale="none"/>
      </rule>
      <line stroke="#686868" stroke-width="1.5" stroke-linecap="butt" scale="none"/>
      <line stroke="#686868" stroke-dasharray="3,4,3,8" stroke-width="3" stroke-linecap="butt"  scale="none"/>
    </rule>
  </rule>
  <rule e="way" k="barrier" v="city_wall">
    <rule cat="overlay" e="way" k="*" v="*">
      <line stroke="#ffffff" stroke-width="3" stroke-linecap="butt" scale="none"/>
      <line stroke="#FFFFFF" dy="-2" stroke-dasharray="4,10" stroke-width="5" stroke-linecap="butt" scale="none"/>
    </rule>
    <line stroke="#888888" stroke-width="2" stroke-linecap="butt" scale="none"/>
    <line stroke="#888888" dy="-2" stroke-dasharray="4,10" stroke-width="4" stroke-linecap="butt" scale="none"/>
  </rule>
  <rule e="way" k="barrier" v="retaining_wall">
    <line stroke="#888888" stroke-width="2" stroke-linecap="butt" scale="none"/>
  </rule>
</rule>
<!-- node barriers -->
<rule e="node" k="barrier" v="*" zoom-min="17">
  <rule e="node" k="barrier" v="bollard">
    <symbol src="file:/poi/barrier-bollard.svg" symbol-width="18" priority="10"/>
  </rule>
  <rule e="node" k="barrier" v="block">
    <symbol src="file:/poi/barrier-block.svg" symbol-width="18" priority="10"/>
  </rule>
  <rule e="node" k="barrier" v="lift_gate">
    <symbol src="file:/poi/barrier-lift_gate.svg" symbol-width="18" priority="10"/>
  </rule>
  <rule e="node" k="barrier" v="swing_gate">
    <symbol src="file:/poi/barrier-lift_gate.svg" symbol-width="18" priority="10"/>
  </rule>
  <rule e="node" k="barrier" v="gate">
    <symbol src="file:/poi/barrier-gate.svg" symbol-width="18" priority="10"/>
  </rule>
  <rule e="node" k="barrier" v="entrance">
    <symbol src="file:/poi/barrier-entrance.svg" symbol-width="14" priority="10"/>
  </rule>
</rule>

</xsl:template>
</xsl:stylesheet>
