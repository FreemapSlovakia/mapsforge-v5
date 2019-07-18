<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <!-- https://wiki.openstreetmap.org/wiki/Tag:boundary%3Dadministrative#10_admin_level_values_for_specific_countries -->
  <xsl:template name="admin">
    <rule cat="boundaries" e="way" k="admin_level" v="*">
      <rule e="way" k="admin_level" v="11" zoom-min="15">
        <line stroke="#50EDC2EC" stroke-width="0.8" />
        <line stroke="#9A3996" stroke-width="0.1" stroke-dasharray="1,5" scale="none"/>
      </rule>
      <!-- SK KU -->
      <rule e="way" k="admin_level" v="10" zoom-min="15">
        <line stroke="#50EDC2EC" stroke-width="1" />
        <line stroke="#9A3996" stroke-width="0.8" stroke-dasharray="2,15" scale="none"/>
      </rule>
      <!-- SK obec -->
      <rule e="way" k="admin_level" v="9" zoom-min="13">
        <line stroke="#50EDC2EC" stroke-width="1" />
        <line stroke="#9A3996" stroke-width="0.8" stroke-dasharray="10,10" scale="none"/>
      </rule>
      <!-- SK okres -->
      <rule e="way" k="admin_level" v="8" zoom-min="11">
        <line stroke="#50EDC2EC" stroke-width="1.5" />
        <line stroke="#9A3996" stroke-width="0.8" stroke-dasharray="8, 5, 3, 5" scale="none"/>
      </rule>            
      <rule e="way" k="admin_level" v="7">
        <line stroke="#50EDC2EC" stroke-width="1" />
        <line stroke="#9A3996" stroke-width="0.2"/>
      </rule>
      <!-- SK BA, KE -->
      <rule e="way" k="admin_level" v="6" zoom-min="10">
        <line stroke="#50EDC2EC" stroke-width="1.5" />
        <line stroke="#9A3996" stroke-width="1" stroke-dasharray="5, 5" scale="none"/>
      </rule>
      <rule e="way" k="admin_level" v="5">
        <line stroke="#50EDC2EC" stroke-width="1.5" />
        <line stroke="#9A3996" stroke-width="1" stroke-dasharray="15, 15" scale="none"/>
      </rule>
      <!-- SK VUC -->
      <rule e="way" k="admin_level" v="4" zoom-min="10">
        <line stroke="#50EDC2EC" stroke-width="2" />
        <line stroke="#9A3996" stroke-width="1" stroke-dasharray="15, 5, 5, 5" scale="none"/>
      </rule>
      <!-- SK -->
      <rule e="way" k="admin_level" v="3" zoom-min="10">
        <line stroke="#50EDC2EC" stroke-width="3" />
        <line stroke="#9A3996" stroke-width="1" stroke-dasharray="15, 10, 5, 10" scale="none"/>
      </rule>
      <rule e="way" k="admin_level" v="2">
        <line stroke="#50EDC2EC" stroke-width="4" />
        <line stroke="#9A3996" stroke-width="2" stroke-dasharray="10, 10" scale="none"/>
      </rule>
      <rule e="way" k="admin_level" v="1">
        <line stroke="#9A3996" stroke-width="2" stroke-dasharray="15, 5, 5, 5" scale="none"/>
      </rule>
    </rule>
  </xsl:template>

</xsl:stylesheet>
