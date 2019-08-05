<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="places">
  <rule cat="place" e="node" k="place" v="*">
    <rule e="node" k="place" v="city" zoom-max="14">
      <caption k="name" font-style="bold_italic" font-size="16" fill="#000000" stroke="#ffffff" stroke-width="3" priority="20"/>
    </rule>
    <rule e="node" k="place" v="town" zoom-min="8" zoom-max="8">
        <circle fill="#000000" radius="2" scale-radius="false" />
        <circle fill="#ffffff" radius="1" scale-radius="false" />
    </rule>
    <rule e="node" k="place" v="town" zoom-min="9" zoom-max="10">
      <caption k="name" font-style="bold" font-size="9" fill="#000000" stroke="#ffffff" stroke-width="3" priority="19"/>
    </rule>
    <rule e="node" k="place" v="town" zoom-min="11" zoom-max="15">
      <caption k="name" font-style="bold" font-size="14" fill="#000000" stroke="#ffffff" stroke-width="3" priority="19"/>
    </rule>
-    <rule e="node" k="place" v="suburb" zoom-min="13" zoom-max="14">
      <caption k="name" font-style="bold" font-size="10" fill="#B06C6C6C" stroke="#80ffffff" stroke-width="2" priority="17" display="ifspace"/>
    </rule> 
    <rule e="node" k="place" v="suburb" zoom-min="15" zoom-max="16">
      <caption k="name" font-style="bold" font-size="14" fill="#B06C6C6C" stroke="#80ffffff" stroke-width="2" priority="17" display="ifspace"/>
    </rule>
    <rule e="node" k="place" v="village" zoom-min="10" zoom-max="12">
        <circle fill="#000000" radius="2" scale-radius="false" />
        <circle fill="#ffffff" radius="1" scale-radius="false" />
    </rule>
    <rule e="node" k="place" v="village" zoom-min="12" zoom-max="12">
      <caption k="name" font-style="normal" font-size="8" fill="#000000" stroke="#ffffff" stroke-width="3" priority="18"/>
    </rule>
    <rule e="node" k="place" v="village" zoom-min="13" zoom-max="18">
      <caption k="name" font-style="normal" font-size="12" fill="#000000" stroke="#ffffff" stroke-width="3" priority="18"/>
    </rule>
    <rule e="node" k="place" v="hamlet" zoom-min="12" zoom-max="13">
        <circle fill="#000000" radius="1.75" scale-radius="false" />
        <circle fill="#ffffff" radius="0.5" scale-radius="false" />
    </rule>
    <rule e="node" k="place" v="hamlet" zoom-min="13" zoom-max="18">
      <caption k="name" font-style="normal" font-size="11" fill="#000000" stroke="#ffffff" stroke-width="2" priority="17"/>
    </rule>
    <rule e="node" k="place" v="locality" zoom-min="15">
      <caption k="name" font-style="italic" font-family="serif" font-size="12" fill="#666666" stroke="#ffffff" stroke-width="1" priority="16" display="ifspace"/>
    </rule>
    <rule e="node" k="place" v="island" zoom-min="10">
      <caption k="name" font-style="bold" font-size="20" fill="#000000" stroke="#ffffff" stroke-width="3.0" priority="16"/>
    </rule>
    <rule e="node" k="place" v="country" zoom-max="6">
      <caption k="name" font-style="bold" font-size="35" fill="#000000" stroke="#ffffff" stroke-width="4.0"/>
    </rule>
  </rule>
</xsl:template>

</xsl:stylesheet>
