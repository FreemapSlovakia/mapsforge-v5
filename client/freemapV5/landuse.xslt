<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="landuse">
  <rule cat="landuse" e="way" k="*" v="*" zoom-min="10">
    <rule e="way" k="natural|landuse" v="forest|wood"  zoom-min="10">
      <area fill="#B6D9BE"/>
      <rule cat="topo_common" e="way" k="logging" v="clearcutting|selective_cutting" zoom-min="12">
        <area src="file:/patterns/forest_cut.svg" symbol-scaling="size" symbol-height="32" symbol-width="32"/>
      </rule>
<!--      <rule e="way" k="logging" v="~" zoom-min="15">
        <area src="file:/patterns/wood-mixed.svg" symbol-scaling="size" symbol-width="64"/>
      </rule>  -->
    </rule>
    <rule e="way" k="landuse" v="farmyard">
      <area fill="#80DFCFBC"/>
    </rule>
    <rule e="way" k="landuse" v="field|farm|farmland">
      <area fill="#80F0EFCD"/>
    </rule>
    <rule e="way" k="landuse" v="orchard">
      <area fill="#80C8F0AB"/>
      <area src="file:/patterns/orchard.svg" symbol-width="18"/>
    </rule>
    <rule e="way" k="landuse" v="vineyard">
      <area fill="#80C8F0AB"/>
      <area src="file:/patterns/vineyard.svg" symbol-width="18"/>
    </rule>
    <rule e="way" k="landuse" v="industrial">
      <area fill="#80D2D2D2" />
    </rule>
    <rule e="way" k="landuse" v="railway">
      <area fill="#80e6d1e3" />
    </rule>
    <rule e="way" k="landuse" v="retail">
      <area fill="#80FED9F5" />
    </rule>
    <rule e="way" k="landuse" v="commercial">
      <area fill="#80FCFFC9" />
    </rule>
    <rule e="way" k="landuse" v="residential">
<!--      <area fill="#80E5E1DC" /> -->
      <area fill="#80EEE7D5" />
    </rule>
    <rule e="way" k="landuse" v="village_green|meadow|grass|recreation_ground|grassland">
      <rule cat="all" e="way" k="*" v="*">
        <area fill="#d6edc0" scale="none"/>
      </rule>    
      <rule cat="overlay" e="way" k="*" v="*">
        <area fill="#80d6edc0" scale="none"/>
      </rule>    
      <area src="file:/patterns/grass.svg" symbol-width="24"/>
    </rule>
    <rule e="way" k="landuse" v="landfill">
      <area fill="#50704000"/>
      <area src="file:/patterns/landfill.svg" symbol-height="48"/>
    </rule>
    <rule e="way" k="landuse" v="quarry">
      <area fill="#A0e1e1e1"/>
      <area src="file:/patterns/quarry.svg" symbol-height="48"/>
    </rule>
    <rule e="way" k="landuse" v="allotments">
      <area src="file:/patterns/allotments.svg" symbol-scaling="size" symbol-height="16" symbol-width="16"/>
    </rule>
    <rule e="way" k="landuse" v="cemetery">
      <area fill="#E9F6EE" stroke="#C0C0C0" stroke-width="0.8" scale="none"/>
      <rule e="any" k="religion" v="christian">
        <area src="file:/patterns/cemetery2.svg" symbol-scaling="size" symbol-height="64" />
      </rule>
      <rule e="any" k="religion" v="jewish">
        <area src="file:/patterns/cemetery3.svg" symbol-scaling="size" symbol-height="64" />
      </rule>
      <rule e="any" k="religion" v="~">
        <area src="file:/patterns/cemetery.svg" symbol-scaling="size" symbol-height="64" />
      </rule>
    </rule>
    <rule e="way" k="landuse" v="military">
      <area src="file:/patterns/military.svg" symbol-width="32"/>
    </rule>
    <rule cat="topo_common" e="way" k="natural" v="scree">
      <area fill="#E2E2E2" scale="none"/>
      <area src="file:/patterns/scree.svg" symbol-width="32"/>
    </rule>     
    <rule cat="topo_common" e="way" k="natural" v="bare_rock">
      <area fill="#E2E2E2" scale="none"/>
      <area src="file:/patterns/bare_rock.svg" symbol-width="32"/>
    </rule>
    <rule cat="all" e="way" k="natural" v="scrub">
      <rule cat="all" e="way" k="*" v="*">
        <area fill="#AACDB2" scale="none"/>
      </rule>
      <rule cat="overlay" e="way" k="*" v="*">
        <area fill="#80AACDB2" scale="none"/>
      </rule>
      <rule cat="topo_common" e="any" k="*" v="*">
        <area src="file:/patterns/scrub.svg" symbol-width="64"/>
      </rule>
    </rule>
  </rule>

  <rule e="way" k="building" v="~">
    <rule e="way" k="leisure" v="pitch">
      <area fill="#B0A3D3D9" stroke="#B0A3D3D9" stroke-width="1" scale="none" />
    </rule>  
    <rule e="way" k="leisure" v="golf_course|miniature_golf">
      <area fill="#B0A3D3D9" stroke="#B0A3D3D9" stroke-width="1" scale="none" />
    </rule>
  </rule>

  <rule e="way" k="golf" v="bunker" zoom-min="16">
    <area fill="#B0F9F7BC" stroke="#B0F9F7BC" stroke-width="1" scale="none" />
  </rule>
  <rule e="way" k="golf" v="green" zoom-min="16">
    <area fill="#B0B5FF99" stroke="#B0B5FF99" stroke-width="1" scale="none" />
  </rule>
  <rule e="node" k="golf" v="pin" zoom-min="16">
    <circle fill="#6FC72B" radius="2" scale-radius="false" />
  </rule>

  <rule e="way" k="natural" v="wetland">
    <rule cat="all" e="way" k="*" v="*">
      <area fill="#8DB0DD"/>
    </rule>
    <rule cat="overlay" e="way" k="*" v="*">
      <area fill="#B08DB0DD"/>
    </rule>    
    <area src="file:/patterns/wetland.svg" symbol-width="24"/>
  </rule>

  <rule cat="topo_common" e="way" k="man_made" v="clearcut" zoom-min="12">
     <area src="file:/patterns/forest_cut.svg" symbol-scaling="size" symbol-height="24" symbol-width="24"/>
  </rule>
</xsl:template>
</xsl:stylesheet>
