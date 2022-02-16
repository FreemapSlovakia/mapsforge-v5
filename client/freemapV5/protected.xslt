<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="protected">
<rule cat="protect_area" e="way" k="boundary" v="national_park" zoom-min="10">
  <line stroke="#276526" stroke-width="1" scale="none" />
  <area fill="#40276526" stroke="#00276526" stroke-width="0" scale="none"/>
  <caption k="name" font-style="bold_italic" font-size="13" fill="#276526" stroke="#ffffff" stroke-width="5" display="always" priority="81"/>
</rule>

<rule cat="protect_area" e="way" k="boundary" v="protected_area" zoom-min="10">
  <line stroke="#276526" stroke-dasharray="1,3" stroke-width="1" scale="none" />
  <rule e="way" k="protect_class" v="1">
      <area src="file:/patterns/protect_class-1.svg"/>
      <rule e="way" k="*" v="*" zoom-min="12">
         <symbol id="protected" src="file:/symbols/protect_area.svg" symbol-width="10" priority="80" display="ifspace"/>
         <caption symbol-id="protected" position="below" k="name" font-style="bold_italic" font-size="10" fill="#276526" stroke="#ffffff" stroke-width="5" priority="80" display="always"/>
      </rule>
      <rule e="way" k="*" v="*" zoom-min="14" >
          <pathText k="name" font-style="normal" font-size="7" fill="#276526" stroke="#ffffff" stroke-width="3"/>
      </rule>
  </rule>
  <rule e="way" k="protect_class" v="2">
      <area src="file:/patterns/protect_class-2.svg" symbol-height="12"/>
      <rule e="way" k="*" v="*" zoom-min="12">
         <symbol id="protected" src="file:/symbols/protect_area.svg" symbol-width="10" priority="80" display="ifspace"/>
         <caption symbol-id="protected" position="below" k="name" font-style="bold_italic" font-size="10" fill="#276526" stroke="#ffffff" stroke-width="5" priority="80" display="always"/>
      </rule>
      <rule e="way" k="*" v="*" zoom-min="14" >
         <pathText k="name" font-style="normal" font-size="8" fill="#276526" stroke="#ffffff" stroke-width="3" />
      </rule>
  </rule>
  <rule e="way" k="protect_class" v="3|4|5" >
--        <area fill="#40276526" stroke="#00276526" stroke-width="1" scale="none"/> -->
      <area src="file:/patterns/protect_class-3.svg" symbol-height="12"/>
      <symbol id="protected" src="file:/symbols/protect_area.svg" symbol-width="10" priority="80" display="ifspace"/>
      <rule e="way" k="*" v="*" >
         <caption symbol-id="protected" position="below" k="name" font-style="italic" font-size="10" fill="#276526" stroke="#ffffff" stroke-width="3" priority="80" display="always"/>
      </rule>
  </rule>
</rule>

</xsl:template>
</xsl:stylesheet>