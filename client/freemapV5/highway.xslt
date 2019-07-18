<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<!-- road colors -->
<xsl:variable name="hw-motorway">#FFFF00</xsl:variable>
<xsl:variable name="hw-trunk">#FFFF00</xsl:variable>
<xsl:variable name="hw-primary">#FF9988</xsl:variable>
<xsl:variable name="hw-secondary">#FDBF6F</xsl:variable>
<xsl:variable name="hw-tertiary">#FEF9B9</xsl:variable>
<xsl:variable name="hw-residential">#FFFFFF</xsl:variable>
<xsl:variable name="hw-unclassified">#FFFFFF</xsl:variable>
<xsl:variable name="hw-pedestrian">#E5E0C2</xsl:variable>
<xsl:variable name="hw-living">#D9D9D9</xsl:variable>
<xsl:variable name="hw-track">#6A5B47</xsl:variable>
<xsl:variable name="hw-service">#FFFFFF</xsl:variable>
<xsl:variable name="hw-cycleway">#E5E0C2</xsl:variable>
<xsl:variable name="hw-footway">#E5E0C2</xsl:variable>
<xsl:variable name="hw-path1">#BBE5E0C2</xsl:variable>
<xsl:variable name="hw-path2">#6A5B47</xsl:variable>
<xsl:variable name="hw-steps">#AACC5555</xsl:variable>
<xsl:variable name="hw-construction">#CC6600</xsl:variable>
<!-- road casing colors -->
<xsl:variable name="cs-motorway">#FF0000</xsl:variable>
<xsl:variable name="cs-trunk">#006600</xsl:variable>
<xsl:variable name="cs-primary">#666666</xsl:variable>
<xsl:variable name="cs-secondary">#666666</xsl:variable>
<xsl:variable name="cs-tertiary">#666666</xsl:variable>
<xsl:variable name="cs-residential">#666666</xsl:variable>
<xsl:variable name="cs-unclassified">#707070</xsl:variable>
<xsl:variable name="cs-pedestrian">#C8B8B1</xsl:variable>
<xsl:variable name="cs-living">#707070</xsl:variable>
<xsl:variable name="cs-track">#c2b5a3</xsl:variable>
<xsl:variable name="cs-service">#666666</xsl:variable>
<xsl:variable name="cs-cycleway">#639CFF</xsl:variable>
<xsl:variable name="cs-footway">#C8B8B1</xsl:variable>
<xsl:variable name="cs-construction">#80FFFFFF</xsl:variable>

<!-- road min zoom -->
<xsl:variable name="z-motorway">6</xsl:variable>
<xsl:variable name="z-motorway_link">12</xsl:variable>
<xsl:variable name="z-trunk">6</xsl:variable>
<xsl:variable name="z-trunk_link">12</xsl:variable>
<xsl:variable name="z-primary">9</xsl:variable>
<xsl:variable name="z-secondary">12</xsl:variable>
<xsl:variable name="z-tertiary">13</xsl:variable>
<xsl:variable name="z-residential">14</xsl:variable>
<xsl:variable name="z-pedestrian">14</xsl:variable>
<xsl:variable name="z-living">14</xsl:variable>
<xsl:variable name="z-service">15</xsl:variable>
<xsl:variable name="z-service2">16</xsl:variable>
<xsl:variable name="z-track">13</xsl:variable>
<xsl:variable name="z-cycleway">15</xsl:variable>
<xsl:variable name="z-footway">16</xsl:variable>
<xsl:variable name="z-construction">15</xsl:variable>

<xsl:template name="highway">

<rule cat="highway" e="way" k="highway" v="*">

  <rule e="way" k="area" v="~|no|false">
    <!-- bridge -->
    <rule e="way" k="bridge" v="yes"> 
      <rule e="way" k="highway" v="construction" zoom-min="{$z-construction}">
        <line stroke="{$cs-construction}" stroke-width="0.8" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="motorway" zoom-min="{$z-motorway}">
        <line stroke="{$cs-motorway}" stroke-width="2.8" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="motorway_link" zoom-min="{$z-motorway_link}">
        <line stroke="{$cs-motorway}" stroke-width="2" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="trunk" zoom-min="{$z-trunk}">
        <line stroke="{$cs-trunk}" stroke-width="2.8" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="trunk_link" zoom-min="{$z-trunk_link}">
        <line stroke="{$cs-trunk}" stroke-width="2" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="primary|primary_link" zoom-min="{$z-primary}">
        <line stroke="{$cs-primary}" stroke-width="2" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="secondary|secondary_link" zoom-min="{$z-secondary}">
        <line stroke="{$cs-secondary}" stroke-width="2" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="tertiary|tertiary_link" zoom-min="{$z-tertiary}">
        <line stroke="{$cs-tertiary}" stroke-width="2" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="residential|unclassified" zoom-min="{$z-residential}">
        <line stroke="{$cs-residential}" stroke-width="1.3" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="living_street" zoom-min="{$z-living}">
        <line stroke="{$cs-living}" stroke-width="1.2" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="service" zoom-min="{$z-service}">
        <rule e="way" k="service" v="~">
          <line stroke="{$cs-service}" stroke-width="0.9" stroke-linecap="butt"/>
        </rule>
        <rule e="way" k="service" v="parking_aisle|driveway|drive-through" zoom-min="{$z-service2}">
          <line stroke="{$cs-service}" stroke-width="0.7" stroke-linecap="butt"/>
        </rule>
      </rule>
      <rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}">
        <line stroke="{$cs-pedestrian}" stroke-width="0.9" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="footway" zoom-min="{$z-footway}">
        <line stroke="{$cs-footway}" stroke-width="0.8" stroke-linecap="butt"/>
      </rule>
    </rule>
    <!-- tunnel -->
    <rule e="way" k="tunnel" v="yes">
      <rule e="way" k="highway" v="construction" zoom-min="{$z-construction}">
        <line stroke="{$cs-construction}" stroke-width="0.8" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="motorway" zoom-min="{$z-motorway}">
        <line stroke="{$cs-motorway}" stroke-width="2.8" stroke-linecap="butt" stroke-dasharray="8,8" />
      </rule>
      <rule e="way" k="highway" v="motorway_link" zoom-min="{$z-motorway_link}">
        <line stroke="{$cs-motorway}" stroke-width="2" stroke-linecap="butt" stroke-dasharray="8,8" />
      </rule>
      <rule e="way" k="highway" v="trunk" zoom-min="{$z-trunk}">
        <line stroke="{$cs-trunk}" stroke-width="2.8" stroke-linecap="butt" stroke-dasharray="8,8" />
      </rule>
      <rule e="way" k="highway" v="trunk_link" zoom-min="{$z-trunk_link}">
        <line stroke="{$cs-trunk}" stroke-width="2" stroke-linecap="butt" stroke-dasharray="8,8" />
      </rule>
      <rule e="way" k="highway" v="primary|primary_link" zoom-min="{$z-primary}">
        <line stroke="{$cs-primary}" stroke-width="2" stroke-linecap="butt" stroke-dasharray="5,5" />
      </rule>
      <rule e="way" k="highway" v="secondary|secondary_link" zoom-min="{$z-secondary}">
        <line stroke="{$cs-secondary}" stroke-width="2" stroke-linecap="butt" stroke-dasharray="5,5" />
      </rule>
      <rule e="way" k="highway" v="tertiary|tertiary_link" zoom-min="{$z-tertiary}">
        <line stroke="{$cs-tertiary}" stroke-width="2" stroke-linecap="butt" stroke-dasharray="5,5" />
      </rule>
      <rule e="way" k="highway" v="residential|unclassified" zoom-min="{$z-residential}">
        <line stroke="{$cs-residential}" stroke-width="1.3" stroke-linecap="butt" stroke-dasharray="4,4"/>
      </rule>
      <rule e="way" k="highway" v="living" zoom-min="{$z-living}">
        <line stroke="{$cs-living}" stroke-width="1.2" stroke-linecap="butt" stroke-dasharray="4,4"/>
      </rule>
      <rule e="way" k="highway" v="service" zoom-min="{$z-service}">
        <rule e="way" k="service" v="~">
          <line stroke="{$cs-service}" stroke-width="0.9" stroke-linecap="butt" stroke-dasharray="3,3"/>
        </rule>
        <rule e="way" k="service" v="parking_aisle|driveway|drive-through" zoom-min="{$z-service2}">
          <line stroke="{$cs-service}" stroke-width="0.7" stroke-linecap="butt" stroke-dasharray="3,3"/>
        </rule>
      </rule>
      <rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}">
        <line stroke="{$cs-pedestrian}" stroke-width="0.9" stroke-linecap="butt" stroke-dasharray="3,3"/>
      </rule>
      <rule e="way" k="highway" v="footway" zoom-min="{$z-footway}">
        <line stroke="{$cs-footway}" stroke-width="0.55" stroke-linecap="butt" stroke-dasharray="3,3" />
      </rule>
    </rule>
    <!-- not tunnel & not bridge-->
    <rule e="way" k="tunnel" v="~">
      <rule e="way" k="bridge" v="~">
        <rule e="way" k="highway" v="construction" zoom-min="{$z-construction}">
          <line stroke="{$cs-construction}" stroke-width="0.8" stroke-linecap="butt"/>
        </rule>      
        <rule e="way" k="highway" v="motorway" zoom-min="{$z-motorway}">
          <line stroke="{$cs-motorway}" stroke-width="1.9" stroke-linecap="butt"/>
        </rule>
        <rule e="way" k="highway" v="motorway_link" zoom-min="{$z-motorway_link}">
          <line stroke="{$cs-motorway}" stroke-width="1.6" stroke-linecap="butt"/>
        </rule>
        <rule e="way" k="highway" v="trunk" zoom-min="{$z-trunk}">
          <line stroke="{$cs-trunk}" stroke-width="1.9" stroke-linecap="butt"/>
        </rule>
        <rule e="way" k="highway" v="trunk_link" zoom-min="{$z-trunk_link}">
          <line stroke="{$cs-trunk}" stroke-width="1.6" stroke-linecap="butt"/>
        </rule>
        <rule e="way" k="highway" v="primary|primary_link" zoom-min="{$z-primary}">
          <line stroke="{$cs-primary}" stroke-width="1.6" stroke-linecap="butt"/>
        </rule>
        <rule e="way" k="highway" v="secondary|secondary_link" zoom-min="{$z-secondary}">
          <line stroke="{$cs-secondary}" stroke-width="1.6" stroke-linecap="butt"/>
        </rule>
        <rule e="way" k="highway" v="tertiary|tertiary_link" zoom-min="{$z-tertiary}">
          <line stroke="{$cs-tertiary}" stroke-width="1.6" stroke-linecap="butt"/>
        </rule>
        <rule e="way" k="highway" v="residential|unclassified" zoom-min="{$z-residential}">
          <line stroke="{$cs-residential}" stroke-width="0.9" stroke-linecap="butt"/>
        </rule>
        <rule e="way" k="highway" v="living_street" zoom-min="{$z-living}">
          <line stroke="{$cs-living}" stroke-width="0.9" stroke-linecap="butt"/>
        </rule>
      <rule e="way" k="highway" v="service" zoom-min="{$z-service}">
        <rule e="way" k="service" v="~">
          <line stroke="{$cs-service}" stroke-width="0.6" stroke-linecap="butt"/>
        </rule>
        <rule e="way" k="service" v="parking_aisle|driveway|drive-through" zoom-min="{$z-service2}">
          <line stroke="{$cs-service}" stroke-width="0.4" stroke-linecap="butt"/>
        </rule>             
      </rule>
      <rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}">
        <line stroke="{$cs-pedestrian}" stroke-width="0.6" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="cycleway" zoom-min="{$z-cycleway}">
        <line stroke="{$cs-cycleway}" stroke-width="0.45" stroke-linecap="butt"/>
      </rule>
      <rule e="way" k="highway" v="footway" zoom-min="{$z-footway}">
        <line stroke="{$cs-footway}" stroke-width="0.35" stroke-linecap="butt"/>
      </rule>
        
      </rule>
    </rule>

    <rule e="way" k="highway" v="construction" zoom-min="{$z-construction}">
      <line stroke="{$hw-construction}" stroke-width="0.2" stroke-linecap="butt" stroke-dasharray="12,12" />
    </rule>
    <rule e="way" k="highway" v="steps" zoom-min="{$z-footway}">
      <line stroke="{$hw-steps}" stroke-width="0.4" stroke-dasharray="1,3" stroke-linecap="butt" scale="stroke"/>
    </rule>
    <rule e="way" k="highway" v="footway" zoom-min="{$z-footway}">
      <line stroke="{$hw-footway}" stroke-width="0.25" stroke-linecap="butt"/>
    </rule>
    <rule e="way" k="highway" v="path" zoom-min="{$z-footway}">
      <line stroke="{$hw-path1}" stroke-width="0.33" stroke-linecap="butt"/>
      <line stroke="{$hw-path2}" stroke-width="0.33" stroke-dasharray="0.5,0.5" stroke-linecap="butt" scale="all"/>
    </rule>
    <rule e="way" k="highway" v="cycleway" zoom-min="{$z-cycleway}">
      <line stroke="{$hw-cycleway}" stroke-width="0.25" stroke-linecap="butt"/>
    </rule>
    <rule e="way" k="highway" v="track" zoom-min="{$z-track}">
      <line stroke="{$cs-track}" stroke-width="0.7" stroke-linecap="butt"/>
      <rule e="way" k="tracktype" v="grade1"> 
        <line stroke="{$hw-track}" stroke-width="0.7" stroke-dasharray="0.8,0.4,0.2,0.4" stroke-linecap="butt" scale="all"/>
      </rule>
      <rule e="way" k="tracktype" v="grade2">
        <line stroke="{$hw-track}" stroke-width="0.7" stroke-dasharray="0.8,0.4,0.2,0.3,0.2,0.4" stroke-linecap="butt" scale="all"/>
      </rule>
      <rule e="way" k="tracktype" v="grade3">
        <line stroke="{$hw-track}" stroke-width="0.7" stroke-dasharray="0.8,0.4,0.2,0.3,0.2,0.3,0.2,0.4" stroke-linecap="butt" scale="all"/>
      </rule>
      <rule e="way" k="tracktype" v="grade4">
        <line stroke="{$hw-track}" stroke-width="0.7" stroke-dasharray="0.8,0.4,0.2,0.3,0.2,0.3,0.2,0.3,0.2,0.4" stroke-linecap="butt" scale="all"/>
      </rule>
      <rule e="way" k="tracktype" v="grade5">
        <line stroke="{$hw-track}" stroke-width="0.7" stroke-dasharray="0.8,0.4,0.2,0.3,0.2,0.3,0.2,0.3,0.2,0.3,0.2,0.4" stroke-linecap="butt" scale="all"/>
      </rule>
      <rule e="way" k="tracktype" v="~">
        <line stroke="{$hw-track}" stroke-width="0.7" stroke-dasharray="1,3" stroke-linecap="butt" scale="all"/>
      </rule>
    </rule>
    <rule e="way" k="highway" v="service" zoom-min="{$z-service}">
      <rule e="way" k="service" v="~"> 
        <line stroke="{$hw-service}" stroke-width="0.3" />
      </rule>
      <rule e="way" k="service" v="*" zoom-min="{$z-service2}"> 
        <line stroke="{$hw-service}" stroke-width="0.2" />
      </rule>
    </rule>    
    <rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}">
      <line stroke="{$hw-pedestrian}" stroke-width="0.3" />
    </rule>
    <rule e="way" k="highway" v="living_street" zoom-min="{$z-living}">
      <line stroke="{$hw-living}" stroke-width="0.6" />
    </rule>
    <rule e="way" k="highway" v="residential|unclassified" zoom-min="{$z-residential}">
      <line stroke="{$hw-residential}" stroke-width="0.6" />
    </rule>    
    <rule e="way" k="highway" v="tertiary|tertiary_link" zoom-min="{$z-tertiary}">
      <line stroke="{$hw-tertiary}" stroke-width="1.1" />
    </rule>
    <rule e="way" k="highway" v="secondary|secondary_link" zoom-min="{$z-secondary}">
      <line stroke="{$hw-secondary}" stroke-width="1.2" />
    </rule>    
    <rule e="way" k="highway" v="primary|primary_link" zoom-min="{$z-primary}">
      <line stroke="{$hw-primary}" stroke-width="1.2" />
    </rule>
    <rule e="way" k="highway" v="trunk_link" zoom-min="{$z-trunk_link}">
      <line stroke="{$hw-trunk}" stroke-width="1.2" />
    </rule>
    <rule e="way" k="highway" v="trunk" zoom-min="{$z-trunk}">
      <line stroke="{$hw-trunk}" stroke-width="1.6" />
    </rule>
    <rule e="way" k="highway" v="motorway_link" zoom-min="{$z-motorway_link}">
      <line stroke="{$hw-motorway}" stroke-width="1.2" />
    </rule>
    <rule e="way" k="highway" v="motorway" zoom-min="{$z-motorway}">
      <line stroke="{$hw-motorway}" stroke-width="1.6" />
    </rule>

      <rule e="way" k="oneway" v="yes" zoom-min="15">
        <rule e="way" k="highway" v="motorway|motorway_link|trunk|trunk_link|primary|primary_link|secondary|secondary_link|tertiary|tertiary_link" zoom-min="16" zoom-max="16">
          <lineSymbol src="file:/symbols/oneway.svg" align-center="true" repeat="true" repeat-start="7" repeat-gap="150" symbol-width="10" priority="-30" display="always" />
        </rule>
        <rule e="way" k="*" v="*" zoom-min="16"> 
          <lineSymbol src="file:/symbols/oneway.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="250" symbol-width="10" priority="-30" display="always"/>
        </rule>
      </rule>
      <rule e="way" k="oneway" v="-1" zoom-min="15">     
        <rule e="way" k="highway" v="motorway|motorway_link|trunk|trunk_link|primary|primary_link|secondary|secondary_link|tertiary|tertiary_link" zoom-min="16" zoom-max="16"> 
          <lineSymbol src="file:/symbols/oneway-reverse.svg" align-center="true" repeat="true" repeat-start="3" repeat-gap="150" symbol-width="10" priority="-30" display="always" />
        </rule>
        <rule e="way" k="*" v="*" zoom-min="16"> 
          <lineSymbol src="file:/symbols/oneway-reverse.svg" align-center="true" repeat="true" repeat-start="10" repeat-gap="250" symbol-width="10" priority="-30" display="always"/>
        </rule>
      </rule>

    <rule e="way" k="junction" v="roundabout" zoom-min="16">
      <lineSymbol src="file:/symbols/oneway.svg" align-center="true" repeat="true" repeat-start="0" repeat-gap="25" symbol-width="8" priority="-30"/>
    </rule>

    <rule e="way" k="highway" v="*" zoom-min="16">
      <rule e="way" k="access" v="destination">
        <line src="file:/patterns/access-destination.png" stroke-width="1" symbol-height="8"/>
      </rule>
      <rule e="way" k="access" v="private|no">
        <line src="file:/patterns/access-private.png" stroke-width="1" symbol-height="8"/>
      </rule>
    </rule>


    
    <rule e="way" k="highway" v="service" zoom-min="{$z-service}">
      <pathText k="name" font-style="bold" font-size="10" stroke="#FFFFFF" stroke-width="2"/>    
    </rule>    
    <rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}">
      <pathText k="name" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3"/>
    </rule>
    <rule e="way" k="highway" v="living_street" zoom-min="{$z-living}">
      <pathText k="name" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3"/>
    </rule>
    <rule e="way" k="highway" v="residential|unclassified" zoom-min="{$z-residential}">
      <pathText k="name" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3" display="always"/>
    </rule>    
    <rule e="way" k="highway" v="tertiary" zoom-min="{$z-tertiary}">
      <pathText k="name" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3"/>
    </rule>
    <rule e="way" k="highway" v="secondary" zoom-min="{$z-secondary}">
      <pathText k="name" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3"/>
    </rule>    
    <rule e="way" k="highway" v="primary" zoom-min="{$z-primary}">
      <pathText k="name" font-style="bold" font-size="11" stroke="#FFFFFF" stroke-width="3"/>
      <caption k="ref" font-style="bold" font-size="8" fill="#FFFFFF" stroke="{$cs-primary}" stroke-width="3" priority="-10"/>
    </rule>

    <rule e="way" k="highway" v="trunk_link" zoom-min="{$z-trunk_link}">
    </rule>
    <rule e="way" k="highway" v="trunk" zoom-min="{$z-trunk}">
      <caption k="ref" font-style="bold" font-size="9" fill="#FFFFFF" stroke="{$cs-trunk}" stroke-width="4" />
    </rule>
    <rule e="way" k="highway" v="motorway_link" zoom-min="{$z-motorway_link}">
    </rule>
    <rule e="way" k="highway" v="motorway" zoom-min="{$z-motorway}">
      <caption k="ref" font-style="bold" font-size="9" fill="#FFFFFF" stroke="{$cs-motorway}" stroke-width="4" />
    </rule>
  </rule>
</rule>


<rule cat="topo_common" e="way" k="man_made" v="embankment" zoom-min="16">
  <line dy="8" stroke="#000000" stroke-width="6" stroke-linecap="butt" stroke-dasharray="1,5" scale="none" />
  <line dy="-8" stroke="#000000" stroke-width="6" stroke-linecap="butt" stroke-dasharray="1,5" scale="none" />
</rule>
<rule cat="topo_common" e="way" k="embankment" v="yes" zoom-min="16">
  <line dy="8" stroke="#000000" stroke-width="6" stroke-linecap="butt" stroke-dasharray="1,5" scale="none" />
  <line dy="-8" stroke="#000000" stroke-width="6" stroke-linecap="butt" stroke-dasharray="1,5" scale="none" />
</rule>

<rule cat="overlay" e="way" k="access" v="*" zoom-min="16">
  <line stroke="#44FFFFFF" stroke-width="0.2"/>
  <rule e="way" k="access" v="destination">
    <line src="file:/patterns/access-destination.png" stroke-width="0.2" symbol-height="8"/>
  </rule>
  <rule e="way" k="access" v="private|no">
    <line src="file:/patterns/access-private.png" stroke-width="0.2" symbol-height="8"/>
  </rule>
</rule>


  <!-- highway nodes -->
  <rule e="node" k="*" v="*">
    <rule cat="default" e="node" k="highway" v="motorway_junction" zoom-min="16">    
      <symbol id="motoexit" src="file:/symbols/motorway_exit.svg" symbol-width="16" priority="30"/>
      <caption symbol-id="motoexit" k="name" position="above" font-style="bold" font-size="9" fill="#17820b" stroke="#FFFFFF" stroke-width="4" />
      <caption symbol-id="motoexit" k="ref" position="below" font-style="normal" font-size="9" fill="#17820b" stroke="#FFFFFF" stroke-width="4" />
    </rule>
  </rule>
</xsl:template>

<xsl:template name="highway_area">
  <rule e="way" k="amenity" v="parking" zoom-min="15">    
    <rule e="way" k="access" v="private" zoom-min="16">
      <area src="file:/patterns/access-private.png" symbol-height="12"/>
    </rule>
    <rule e="way" k="access" v="customers" zoom-min="16">
      <area src="file:/patterns/access-destination.png" symbol-height="12"/>
    </rule>
    <area src="file:/patterns/parking.svg" symbol-scaling="size" symbol-height="16" symbol-width="16"/>    
    <rule cat="default" e="way" k="fee" v="~|no" zoom-min="18">
      <symbol src="file:/symbols/parking.svg" symbol-width="9" priority="-50"/>
    </rule>
    <rule cat="default" e="way" k="fee" v="*" zoom-min="18">
      <symbol src="file:/symbols/parking-fee.svg" symbol-width="9" priority="-50"/>
    </rule>
  </rule>

    <rule cat="highway" e="way" k="area" v="yes|true">
        <rule e="way" k="highway" v="*">
            <rule e="way" k="highway" v="footway|path" zoom-min="{$z-footway}">
                <area fill="{$hw-footway}" stroke="{$cs-footway}" stroke-width="0.15"/>
            </rule>
            <rule e="way" k="highway" v="pedestrian" zoom-min="{$z-pedestrian}">
                <area fill="{$hw-pedestrian}" stroke="{$cs-pedestrian}" stroke-width="0.15"/>
            </rule>
            <rule e="way" k="highway" v="service" zoom-min="{$z-service}">
                <area fill="{$hw-service}" stroke="{$cs-service}" stroke-width="0.15"/>
            </rule>
            <rule e="way" k="highway" v="unclassified" zoom-min="{$z-residential}">
                <area fill="{$hw-residential}" stroke="{$cs-residential}" stroke-width="0.3"/>
            </rule>
            <rule e="way" k="highway" v="residential" zoom-min="{$z-residential}">
                <area fill="{$hw-residential}" stroke="{$cs-residential}" stroke-width="0.15"/>
            </rule>
            <rule e="way" k="highway" v="road" zoom-min="{$z-residential}">
                <area fill="#d0d0d0"/>
            </rule>
            <rule e="way" k="highway" v="living_street" zoom-min="{$z-living}">
                <area fill="{$hw-living}" stroke="{$cs-living}" stroke-width="0.15"/>
            </rule>
            <rule e="way" k="*" v="*" zoom-min="{$z-service}">
              <caption k="name" font-style="bold" font-size="11" fill="#000000" stroke="#ffffff" stroke-width="3"/>
            </rule>
        </rule>
    </rule>  
</xsl:template>

</xsl:stylesheet>
