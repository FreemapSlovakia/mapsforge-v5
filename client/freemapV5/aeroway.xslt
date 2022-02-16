<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="aeroway">
<rule cat="highway" e="way" k="aeroway" v="*">
  <rule e="way" k="aeroway" v="runway" zoom-min="13">
    <line stroke="#805A5A5A" stroke-width="1.6"/>
  </rule>
</rule>

</xsl:template>
</xsl:stylesheet>
