<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="buildings">
  <rule cat="building" e="way" k="*" v="*" zoom-min="15">
    <rule e="way" k="building" v="*">
      <rule e="way" k="shop" v="~">
        <area fill="#B0CBCBCB" stroke="#8F8F8F" stroke-width="0.6" scale="none" />
      </rule>
      <rule e="way" k="shop" v="*">
        <area fill="#B0EDCDE9" stroke="#971583" stroke-width="0.6" scale="none" />
      </rule>
      <rule e="way" k="amenity" v="fuel">
        <area fill="#B0EDCDE9" stroke="#971583" stroke-width="0.6" scale="none" />
      </rule>
      <rule e="way" k="historic" v="castle">
        <area fill="#B0CD7878" stroke="#550000" stroke-width="0.6" scale="none" />
      </rule>
      <rule e="way" k="leisure" v="sports_centre|stadium">
        <area fill="#B0A3D3D9" stroke="#1b8389" stroke-width="1" scale="none" />
      </rule>
    </rule>
    <rule e="way" k="building" v="cathedral|church|chapel">
      <area fill="#B0d19158" stroke="#8F8F8F" stroke-width="1.6" scale="none" />
    </rule>
    <rule e="way" k="building" v="shop">
      <area fill="#B0971583" stroke="#8F8F8F" stroke-width="0.6" scale="none" />
    </rule>
  </rule>
</xsl:template>
</xsl:stylesheet>