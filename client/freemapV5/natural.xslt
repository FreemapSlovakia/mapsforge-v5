<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="natural_nodes">
<rule cat="topo_common" e="node" k="natural" v="peak" zoom-min="11">
  <rule e="node" k="name" v="*">
    <rule e="node" k="ele" v="*">
      <rule e="node" k="*" v="*" zoom-min="11" zoom-max="13">
        <symbol id="peak" src="file:/poi/peak.svg" symbol-width="7" />
      </rule>
      <rule e="node" k="*" v="*" zoom-min="14">
        <symbol id="peak" src="file:/poi/peak.svg" symbol-width="10" />
      </rule>
      <rule e="any" k="*" v="*" zoom-min="11" zoom-max="11">
        <caption k="name" symbol-id="peak" position="above" font-style="bold" font-family="serif" font-size="7.2" fill="#560000" stroke="#ffffcc" stroke-width="2" priority="70" display="ifspace"/>
      </rule>
      <rule e="any" k="*" v="*" zoom-min="12" zoom-max="13">
        <caption k="name" symbol-id="peak" position="above" font-style="bold" font-family="serif" font-size="8" fill="#560000" stroke="#ffffcc" stroke-width="3" priority="70" display="ifspace"/>
      </rule>
      <rule e="any" k="*" v="*" zoom-min="14">
        <caption k="name" symbol-id="peak" position="above" font-style="bold" font-family="serif" font-size="10" fill="#560000" stroke="#ffffcc" stroke-width="3" priority="70" display="ifspace"/>
      </rule>
    </rule>
    <rule e="node" k="ele" v="~">
      <rule e="node" k="*" v="*" zoom-min="14">
        <symbol id="peak" src="file:/poi/peak.svg" symbol-width="10" />
      </rule>
      <rule e="any" k="*" v="*" zoom-min="14">
        <caption k="name" symbol-id="peak" position="above" font-style="bold" font-family="serif" font-size="10" fill="#560000" stroke="#ffffcc" stroke-width="3" priority="70" display="ifspace"/>
      </rule>
    </rule>
  </rule>
  <rule e="node" k="name" v="~">
    <rule e="node" k="*" v="*" zoom-min="16">
      <symbol id="peak" src="file:/poi/peak.svg" symbol-width="8" priority="20"/>
    </rule>
  </rule>
  <rule e="any" k="*" v="*" zoom-min="14">
    <caption k="ele" symbol-id="peak" position="below" font-style="bold" font-size="9" fill="#560000" stroke="#ffffff" stroke-width="3" priority="10" display="ifspace"/>
  </rule>
</rule>

<rule cat="topo_common" e="way" k="natural" v="valley" zoom-min="12">
  <rule e="way" k="*" v="*" zoom-min="12" zoom-max="15">
<!--
         <line stroke="#40FFFFFF" dy="3" stroke-width="2" scale="none" />
       <line stroke="#40FFFFFF" dy="-3" stroke-width="2" scale="none" />
-->
    <pathText k="name" font-style="bold" font-size="10" fill="#DDFFFFFF" stroke="#77000000" repeat-gap="150" stroke-width="1.8" display="always"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="16" zoom-max="17">
<!--    <line stroke="#40FFFFFF" dy="3" stroke-width="2" scale="none" />
    <line stroke="#40FFFFFF" dy="-3" stroke-width="2" scale="none" />
-->
    <pathText k="name" font-style="bold" font-size="12" fill="#EEFFFFFF" stroke="#77000000" repeat-gap="300" stroke-width="2" />
  </rule>
  <rule e="way" k="*" v="*" zoom-min="18">
<!--
    <line stroke="#40FFFFFF" dy="3" stroke-width="2" scale="none" />
       <line stroke="#40FFFFFF" dy="-3" stroke-width="2" scale="none" />
-->
    <pathText k="name" font-style="bold" font-size="14" fill="#EEFFFFFF" stroke="#77000000" repeat-gap="400" stroke-width="2" />
  </rule>
</rule>
<rule cat="topo_common" e="way" k="natural" v="ridge" zoom-min="12"> 
  <rule e="way" k="*" v="*" zoom-min="12" zoom-max="15">
    <line stroke="#60FFFFFF" stroke-width="10" scale="none" />
    <pathText k="name" font-style="bold" font-size="10" fill="#DDFFFFFF" stroke="#77000000" repeat-gap="150" stroke-width="1.8" display="always"/>
  </rule>
  <rule e="way" k="*" v="*" zoom-min="16" zoom-max="17">
    <line stroke="#60FFFFFF" stroke-width="12" scale="none" />
    <pathText k="name" font-style="bold" font-size="12" fill="#EEFFFFFF" stroke="#77000000" repeat-gap="300" stroke-width="2" />
  </rule>
  <rule e="way" k="*" v="*" zoom-min="18">
    <line stroke="#60FFFFFF" stroke-width="14" scale="none" />
    <pathText k="name" font-style="bold" font-size="14" fill="#EEFFFFFF" stroke="#77000000" repeat-gap="400" stroke-width="2" />
  </rule>
</rule>

<rule cat="topo_common" e="way" k="natural" v="cliff" zoom-min="14">
  <line stroke="#555555" stroke-width="1" scale="none"/>
  <line stroke="#555555" dy="2" stroke-dasharray="1,8" stroke-width="4" stroke-linecap="butt"  scale="none"/>
</rule>

</xsl:template>
</xsl:stylesheet>