<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="protected">
  <rule cat="protect_area" e="way" k="boundary" v="protected_area" zoom-min="10">
    <rule e="way" k="protect_class" v="2|5">
      <rule e="way" k="*" v="*" zoom-min="10" zoom-max="14">
        <area fill="#50276526" stroke="#276526" stroke-width="2" scale="none"/>
        <caption k="name" font-style="normal" font-size="12" fill="#276526" stroke="#ffffff" stroke-width="3"/>
      </rule>
      <rule e="way" k="*" v="*" zoom-min="15">
        <area fill="#50276526" stroke="#276526" stroke-width="2" scale="none"/>
        <pathText k="name" font-style="normal" font-size="8" fill="#276526" stroke="#ffffff" stroke-width="2"/>
      </rule>
    </rule>
    <rule e="way" k="protect_class" v="1|3|4">
      <rule e="way" k="*" v="*" zoom-min="10" zoom-max="14">
        <area fill="#50276526" stroke="#276526" stroke-width="2" scale="none"/>
        <caption k="name" font-style="normal" font-size="12" fill="#276526" stroke="#ffffff" stroke-width="3"/>
      </rule>
      <rule e="way" k="*" v="*" zoom-min="15">
        <area fill="#50276526" stroke="#276526" stroke-width="2" scale="none"/>
        <pathText k="name" font-style="normal" font-size="8" fill="#276526" stroke="#ffffff" stroke-width="2"/>
      </rule>
    </rule>
  </rule>
  <rule cat="protect_area" e="way" k="boundary" v="national_park" zoom-min="10">
    <rule e="way" k="*" v="*" zoom-min="10" zoom-max="14">
      <area fill="#50276526" stroke="#276526" stroke-width="2" scale="none"/>
      <caption k="name" font-style="normal" font-size="12" fill="#276526" stroke="#ffffff" stroke-width="3"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="15">
      <area fill="#50276526" stroke="#276526" stroke-width="2" scale="none"/>
      <pathText k="name" font-style="normal" font-size="8" fill="#276526" stroke="#ffffff" stroke-width="2"/>
    </rule>
  </rule>
</xsl:template>
</xsl:stylesheet>
