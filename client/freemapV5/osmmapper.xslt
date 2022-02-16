<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="fixme">
<rule cat="osmmapper" e="node" k="fixme" v="*">
  <symbol id="fix" src="file:/symbols/fixme.svg" symbol-width="16" display="always"/>
  <caption k="fixme" symbol-id="fix" position="below" font-style="normal" font-size="11" fill="#FF0000" stroke="#FFFFFF" stroke-width="4" priority="80" display="ifspace"/>
</rule>
<rule cat="osmmapper" e="way" k="fixme" v="*">
  <line stroke="#FF0000" stroke-width="4" stroke-linecap="butt" scale="none"/>
  <caption k="fixme" font-style="normal" font-size="11" fill="#FF0000" stroke="#FFFFFF" stroke-width="4" priority="80" display="ifspace"/>
</rule>
<rule cat="osmmapper" e="way" k="highway" v="track" zoom-min="13">
  <rule e="way" k="tracktype" v="~">
    <line stroke="#FC7E60" stroke-width="3" stroke-dasharray="10,5" stroke-linecap="butt" scale="none"/>
  </rule>
</rule>

</xsl:template>
</xsl:stylesheet>
