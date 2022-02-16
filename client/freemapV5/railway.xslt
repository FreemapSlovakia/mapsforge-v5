<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="railway_no_tunnel">
<rule cat="all" e="way" k="railway" v="*">
  <rule e="way" k="tunnel" v="~|false|no">
    <rule e="way" k="railway" v="station">
      <area fill="#9b9b79" stroke="#707070" stroke-width="0.3"/>
    </rule>
<!-- railway bridge casings -->
    <rule e="way" k="bridge" v="yes|true" zoom-min="12">
      <rule e="way" k="railway" v="tram">
        <line stroke="#000000" stroke-width="0.4" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="railway" v="subway|light_rail|narrow_gauge|funicular">
        <line stroke="#000000" stroke-width="0.6" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="railway" v="rail">
        <rule e="way" k="service" v="~">
          <line stroke="#000000" stroke-width="0.9" stroke-linecap="butt"/>
        </rule>
        <rule e="way" k="service" v="*" zoom-min="16">
          <line stroke="#000000" stroke-width="0.4" stroke-linecap="butt"/>
        </rule>
      </rule>
    </rule>
<!-- railway casings and cores -->
    <rule e="way" k="railway" v="tram" zoom-min="12">
      <line stroke="#e6b7e6" stroke-width="0.20" stroke-linecap="butt"/>
      <line stroke="#4c0f4c" stroke-width="0.18" stroke-dasharray="0.5,0.5" stroke-linecap="butt" scale="all"/>
    </rule>
    <rule e="way" k="railway" v="subway" zoom-min="12">
      <line stroke="#0f0f4c" stroke-width="0.4" stroke-linecap="butt"/>
      <line stroke="#b7b7e6" stroke-width="0.25" stroke-dasharray="3,3" stroke-linecap="butt" scale="all"/>
    </rule>
    <rule e="way" k="railway" v="light_rail">
      <line stroke="#0f4c0f" stroke-width="0.4" stroke-linecap="butt"/>
      <line stroke="#b7e6e6" stroke-width="0.25" stroke-linecap="butt"/>
      <line stroke="#0f4c0f" stroke-width="0.25" stroke-dasharray="3,3" stroke-linecap="butt" scale="all"/>
    </rule>
    <rule e="way" k="railway" v="narrow_gauge|funicular" zoom-min="12">
      <rule e="way" k="*" v="*">
        <line stroke="#222222" stroke-width="0.45" stroke-linecap="butt"/>
        <line stroke="#cccccc" stroke-width="0.3" stroke-linecap="butt"/>
        <line stroke="#222222" stroke-width="0.3" stroke-dasharray="1,1" stroke-linecap="butt" scale="all"/>
      </rule>
    </rule>
    <rule e="way" k="railway" v="preserved" zoom-min="14">
      <rule e="way" k="*" v="*">
        <line stroke="#000000" stroke-width="0.4" stroke-linecap="butt"/>
        <line stroke="#ffff99" stroke-width="0.3" stroke-linecap="butt"/>
        <line stroke="#000000" stroke-width="0.3" stroke-dasharray="3,3" stroke-linecap="butt" scale="all"/>
      </rule>
    </rule>
    <rule e="way" k="railway" v="rail">
      <rule e="way" k="service" v="~">
        <line stroke="#000000" stroke-width="0.45" stroke-linecap="butt"/>
        <line stroke="#f2f2f2" stroke-width="0.32" stroke-linecap="butt"/>
        <line stroke="#000000" stroke-width="0.32" stroke-dasharray="2,2" stroke-linecap="butt" scale="all"/>
      </rule>
      <rule e="way" k="service" v="*" zoom-min="16">
        <line stroke="#000000" stroke-width="0.2" stroke-linecap="butt"/>
        <line stroke="#f2f2f2" stroke-width="0.1" stroke-linecap="butt"/>
        <line stroke="#000000" stroke-width="0.1" stroke-dasharray="1,1" stroke-linecap="butt" scale="all"/>
      </rule>
    </rule>
  </rule>
</rule>

</xsl:template>

<xsl:template name="railway_tunnel">
<rule e="way" k="tunnel" v="yes">
  <rule e="way" k="railway" v="*">
    <rule e="way" k="railway" v="tram|subway|light_rail|narrow_gauge" zoom-min="12">
      <line stroke="#880f0f4c" stroke-width="0.25" stroke-dasharray="1,1" stroke-linecap="butt" scale="all"/>
    </rule>
    <rule e="way" k="railway" v="rail">
      <line stroke="#aa000000" stroke-width="0.65" stroke-dasharray="0.5,0.5" stroke-linecap="butt" scale="all"/>
      <line stroke="#ffffff" stroke-width="0.32" stroke-linecap="butt" />
      <line stroke="#aa000000" stroke-width="0.32" stroke-dasharray="2,2" stroke-linecap="butt" scale="all"/>
    </rule>
  </rule>
</rule>

</xsl:template>

<xsl:template name="railway_node">
<rule e="node" k="railway" v="*">
  <rule e="node" k="railway" v="crossing" zoom-min="16">
    <symbol src="file:/poi/railway-crossing.svg" symbol-width="10"/>
  </rule>
  <rule e="node" k="railway" v="level_crossing" zoom-min="16">
    <symbol id="railcross2" src="file:/poi/railway-crossing.svg" symbol-width="16"/>
    <rule e="node" k="*" v="*" zoom-min="18">
      <caption k="ref" symbol-id="railcross2" position="below" font-style="normal" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2"/>
    </rule>
  </rule>
  <rule  e="any" k="railway" v="station" zoom-min="15">
    <symbol id="trainstation" src="file:/poi/train_station.svg" symbol-width="14" priority="0"/>
    <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="trainstation" position="below" font-style="bold" font-size="11" fill="#1E4BFF" stroke="#FFFFFF" stroke-width="3" priority="49" display="ifspace"/>
    </rule>
  </rule>
  <rule e="node" k="railway" v="halt|tram_stop" zoom-min="16">
    <symbol id="trainhalt" src="file:/poi/train_halt.svg" symbol-width="14" priority="0"/>
    <caption k="name" symbol-id="trainhalt" position="below" font-style="bold" font-size="10" fill="#1E4BFF" stroke="#ffffff" stroke-width="2"/>
  </rule>
</rule>

</xsl:template>
</xsl:stylesheet>