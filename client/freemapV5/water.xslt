<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="waterways">
  <rule cat="waterway" e="way" k="waterway" v="*">
    <rule e="way" k="waterway" v="ditch" zoom-min="15">
        <line stroke="#8DB0DD" stroke-width="0.1"/>
        <rule e="way" k="*" v="*" zoom-min="16">
            <lineSymbol src="file:/symbols/waterflow.svg" align-center="true" repeat="true" repeat-start="3" symbol-width="9" priority="-100"/>
        </rule>
    </rule>
    <rule e="way" k="waterway" v="canal" zoom-min="13">
      <rule e="way" k="*" v="*" zoom-min="15">
        <pathText k="name" font-style="italic" font-size="10" fill="#0000fc" stroke="#ffffff" stroke-width="3"/>
      </rule>
        <line stroke="#8DB0DD" stroke-width="0.8" />
        <rule e="way" k="*" v="*" zoom-min="15" zoom-max="17">
            <lineSymbol src="file:/symbols/waterflow.svg" align-center="true" repeat="true" repeat-start="3" repeat-gap="80" symbol-width="8"/>
        </rule>
        <rule e="way" k="*" v="*" zoom-min="18">
            <lineSymbol src="file:/symbols/waterflow.svg" align-center="true" repeat="true" repeat-start="3" repeat-gap="140" symbol-width="10"/>
        </rule>
    </rule>
    <rule e="way" k="waterway" v="stream|drain" zoom-min="14">
      <rule e="way" k="*" v="*" zoom-min="15">
        <pathText k="name" font-style="italic" font-size="8" fill="#0000fc" stroke="#ffffff" stroke-width="2"/>
      </rule>
        <rule e="way" k="tunnel" v="yes|culvert">
            <line stroke="#8DB0DD" stroke-dasharray="4,8" stroke-width="0.3"/>
        </rule>
        <rule e="way" k="tunnel" v="~|no">
            <line stroke="#8DB0DD" stroke-width="0.3"/>
        </rule>
        <rule e="way" k="*" v="*" zoom-min="15" zoom-max="17">
            <lineSymbol src="file:/symbols/waterflow.svg" align-center="true" repeat="true" repeat-start="5" repeat-gap="80" symbol-width="8"/>
        </rule>
        <rule e="way" k="*" v="*" zoom-min="18">
            <lineSymbol src="file:/symbols/waterflow.svg" align-center="true" repeat="true" repeat-start="5" repeat-gap="140" symbol-width="10"/>
        </rule>
    </rule>
    <rule e="way" k="waterway" v="river">
      <rule e="way" k="*" v="*" zoom-min="13">
        <pathText k="name" font-style="italic" font-size="10" fill="#0000fc" stroke="#ffffff" stroke-width="3"/>
      </rule>
        <rule e="way" k="tunnel" v="yes|culvert">
            <line stroke="#8DB0DD" stroke-dasharray="5,12" stroke-width="1.0"/>
        </rule>
        <rule e="way" k="tunnel" v="~|no">
            <line stroke="#8DB0DD" stroke-width="1.5"/>
        </rule>
        <rule e="way" k="*" v="*" zoom-min="13" zoom-max="17">
            <lineSymbol src="file:/symbols/waterflow.svg" align-center="true" repeat="true" repeat-start="5" repeat-gap="80" symbol-width="8"/>
        </rule>
        <rule e="way" k="*" v="*" zoom-min="18">
            <lineSymbol src="file:/symbols/waterflow.svg" align-center="true" repeat="true" repeat-start="5" repeat-gap="140" symbol-width="10"/>
        </rule>
    </rule>
    <rule e="way" k="waterway" v="dock">
        <area fill="#b5d6f1"/>
    </rule>
    <rule e="way" k="waterway" v="riverbank">
        <area fill="#8DB0DD"/>
    </rule>
    <rule e="way" k="waterway" v="weir">
        <line stroke="#000044" stroke-width="0.375"/>
    </rule>
    <rule e="way" k="waterway" v="dam">
        <line stroke="#000000" stroke-width="0.5"/>
    </rule>
    <rule e="way" k="lock" v="yes|true">
        <line stroke="#000000" stroke-width="2.0" stroke-linecap="butt"/>
        <line stroke="#f8f8f8" stroke-width="1.5" stroke-linecap="butt"/>
    </rule>
  </rule>
</xsl:template>

<xsl:template name="waterbodies">
  <rule e="way" k="natural" v="water">
    <rule cat="all" e="way" k="*" v="*">
      <area fill="#8DB0DD"/>
    </rule>
    <rule cat="overlay" e="way" k="*" v="*">
      <area fill="#508DB0DD"/>
    </rule>
    <rule e="way" k="*" v="*" zoom-min="14">
      <caption k="name" font-style="italic" font-size="10" fill="#4040ff" stroke="#ffffff" stroke-width="3"/>
    </rule>
  </rule>
</xsl:template>
</xsl:stylesheet>
