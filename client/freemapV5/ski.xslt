<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="pistes">
<rule cat="ski" e="way" k="piste:type" v="*" zoom-min="12">

  <rule e="way" k="piste:type" v="downhill" closed="yes">
    <rule e="way" k="piste:difficulty" v="novice">
      <area fill="#4040ff40" stroke="#8040ff40" stroke-width="2" scale="none"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="easy">
      <area fill="#404040ff" stroke="#804040ff" stroke-width="2" scale="none"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="intermediate">
      <area fill="#40ff4040" stroke="#80ff4040" stroke-width="2" scale="none"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="advanced">
      <area fill="#40000000" stroke="#80000000" stroke-width="2" scale="none"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="expert">
      <area fill="#40f6800a" stroke="#80f6800a" stroke-width="2" scale="none"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="freeride">
      <area fill="#40f6dd0a" stroke="#80f6dd0a" stroke-width="2" scale="none"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="~">
      <area fill="#40505050" stroke="#80505050" stroke-width="2" scale="none"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="16">
       <caption k="name" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0"/>
    </rule>
  </rule>

  <rule e="way" k="piste:type" v="downhill" closed="no">
    <rule e="way" k="piste:difficulty" v="novice">
      <line stroke="#5540ff40" stroke-width="2.0"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="easy">
      <line stroke="#554040ff" stroke-width="2.0"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="intermediate">
      <line stroke="#55ff4040" stroke-width="2.0"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="advanced">
    <line stroke="#55000000" stroke-width="2.0"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="expert">
      <line stroke="#55f6800a" stroke-width="2.0"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="freeride">
      <line stroke="#55f6dd0a" stroke-width="2.0"/>
    </rule>
    <rule e="way" k="piste:difficulty" v="~">
      <line stroke="#55505050" stroke-width="2.0"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="14">
       <pathText k="name" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0"/>
    </rule>
  </rule>

  <rule e="way" k="piste:type" v="sled">
    <line stroke="#55cdabde" stroke-width="2.5"/>
  </rule>

  <rule e="way" k="piste:type" v="nordic">
     <rule e="way" k="piste:difficulty" v="novice">
        <line stroke="#5540ff40" stroke-width="2.0" stroke-dasharray="12,10"/>
     </rule>
     <rule e="way" k="piste:difficulty" v="easy">
        <line stroke="#554040ff" stroke-width="2.0" stroke-dasharray="12,10"/>
     </rule>
     <rule e="way" k="piste:difficulty" v="intermediate">
        <line stroke="#55ff4040" stroke-width="2.0" stroke-dasharray="12,10"/>
     </rule>
     <rule e="way" k="piste:difficulty" v="advanced">
        <line stroke="#55000000" stroke-width="2.0" stroke-dasharray="12,10"/>
     </rule>
     <rule e="way" k="piste:difficulty" v="expert">
        <line stroke="#55f6800a" stroke-width="2.0" stroke-dasharray="12,10"/>
     </rule>
     <rule e="way" k="piste:difficulty" v="freeride">
       <line stroke="#55f6dd0a" stroke-width="2.0" stroke-dasharray="12,10"/>
     </rule>
     <rule e="way" k="piste:difficulty" v="~">
       <line stroke="#55505050" stroke-width="2.0" stroke-dasharray="12,10"/>
     </rule>
  </rule>

</rule>

</xsl:template>
</xsl:stylesheet>