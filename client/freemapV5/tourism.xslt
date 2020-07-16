<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="tourism_information">
  <rule cat="hiking" e="node" k="tourism" v="*" zoom-min="11">
    <rule e="node" k="information" v="guidepost">
      <rule e="node" k="hiking" v="yes">
        <rule e="node" k="*" v="*" zoom-min="12" zoom-max="12">
          <symbol id="guide_hiking" src="file:/poi/guidepost_hiking.svg" symbol-width="12" priority="150" display="always"/>
        </rule>
        <rule e="node" k="*" v="*" zoom-min="13">
          <symbol id="guide_hiking" src="file:/poi/guidepost_hiking.svg" symbol-width="20" priority="150" display="always"/>
          <rule e="node" k="*" v="*" zoom-min="13" zoom-max="15">
            <caption k="name" symbol-id="guide_hiking" position="above" font-style="bold" font-size="11" fill="#000000" stroke="#DBFFA0" stroke-width="2" priority="160" display="ifspace"/>
          </rule>
          <rule e="node" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="guide_hiking" position="above" font-style="bold" font-size="12" fill="#000000" stroke="#DBFFA0" stroke-width="2" priority="160" display="always"/>
          </rule>
          <rule e="node" k="*" v="*" zoom-min="15">
            <caption k="ele" symbol-id="guide_hiking" position="below" font-style="normal" font-size="10" fill="#000000" stroke="#DBFFA0" stroke-width="2" priority="49" display="ifspace"/>
          </rule>
        </rule>
      </rule>
    </rule>
  </rule>
  <rule cat="cycle" e="node" k="tourism" v="*" zoom-min="11">
    <rule e="node" k="information" v="guidepost">
      <rule e="node" k="bicycle|mtb" v="yes">
        <rule e="node" k="*" v="*" zoom-min="12" zoom-max="12">
          <symbol id="guide_cycle" src="file:/poi/guidepost_cycle.svg" symbol-width="12" priority="150" display="always"/>
        </rule>
        <rule e="node" k="*" v="*" zoom-min="13">
          <symbol id="guide_cycle" src="file:/poi/guidepost_cycle.svg" symbol-width="20" priority="150" display="always"/>
          <rule e="node" k="*" v="*" zoom-min="13" zoom-max="15">
            <caption k="name" symbol-id="guide_cycle" position="above" font-style="bold" font-size="11" fill="#000000" stroke="#D5EBFF" stroke-width="2" priority="160" display="ifspace"/>
          </rule>
          <rule e="node" k="*" v="*" zoom-min="16">
            <caption k="name" symbol-id="guide_cycle" position="above" font-style="bold" font-size="12" fill="#000000" stroke="#D5EBFF" stroke-width="2" priority="160" display="always"/>
          </rule>
          <rule e="node" k="*" v="*" zoom-min="15">
            <caption k="ele" symbol-id="guide_cycle" position="below" font-style="normal" font-size="10" fill="#000000" stroke="#D5EBFF" stroke-width="2" priority="49" display="ifspace"/>
          </rule>
        </rule>
      </rule>
    </rule>
  </rule>
  <rule cat="ski" e="node" k="tourism" v="*" zoom-min="11">
    <rule e="node" k="information" v="guidepost">
      <rule e="node" k="ski" v="yes">
        <rule e="node" k="*" v="*" zoom-min="12" zoom-max="12">
          <symbol id="guide_ski" src="file:/poi/guidepost_ski.svg" symbol-width="12" priority="150" display="always"/>
        </rule>
        <rule e="node" k="*" v="*" zoom-min="13">
          <symbol id="guide_ski" src="file:/poi/guidepost_ski.svg" symbol-width="20" priority="150" display="always"/>
          <caption k="name" symbol-id="guide_ski" position="above" font-style="bold" font-size="12" fill="#000000" stroke="#FFEEAA" stroke-width="3" priority="160" display="always"/>
          <rule e="node" k="*" v="*" zoom-min="15">
            <caption k="ele" symbol-id="guide_ski" position="below" font-style="normal" font-size="10" fill="#000000" stroke="#FFEEAA" stroke-width="3" priority="49" display="ifspace"/>
          </rule>
        </rule>
      </rule>
    </rule>
  </rule>

</xsl:template>

</xsl:stylesheet>
