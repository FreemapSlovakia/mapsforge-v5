<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="poi">
  <rule cat="topo_common" e="node" k="natural" v="spring" zoom-min="14">
    <symbol id="spring" src="file:/symbols/spring.svg" symbol-width="20" priority="30"/>
  </rule>

  <rule cat="topo_icons" e="node" k="tourism" v="information" zoom-min="16">
    <rule e="node" k="information" v="map|board|office">
      <symbol id="tourisminfo" src="file:/symbols/information.svg" symbol-width="16"/>
      <caption k="ref" symbol-id="tourisminfo" position="above" font-style="bold" font-size="10" fill="#005e00" stroke="#ffffff" stroke-width="2" priority="31"/>
      <caption k="name" symbol-id="tourisminfo" position="below" font-style="bold" font-size="10" fill="#005e00" stroke="#ffffff" stroke-width="2" priority="30"/>
    </rule>
  </rule>
  
  <rule e="any" k="aeroway" v="aerodrome" zoom-min="13">
    <rule e="any" k="icao" v="*" zoom-min="13">
      <symbol id="airport" src="file:/symbols/aerodrome.svg" symbol-width="14"/>
      <caption k="name" symbol-id="airport" position="below" font-style="bold" font-size="11" fill="#1E4BFF" stroke="#FFFFFF" stroke-width="3" priority="49" display="ifspace"/>
    </rule>
    <rule e="any" k="icao" v="~" zoom-min="16">
      <symbol id="airport" src="file:/symbols/aerodrome.svg" symbol-width="14"/>
    </rule>
  </rule>
  
  <rule  e="any" k="amenity" v="bus_station" zoom-min="15">
    <symbol id="busstation" src="file:/symbols/bus_station.svg" symbol-width="14" priority="0"/>
    <rule  e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="busstation" position="below" font-style="bold" font-size="11" fill="#1E4BFF" stroke="#FFFFFF" stroke-width="3" priority="49" display="ifspace"/>
    </rule>
  </rule>

  <rule  e="any" k="amenity" v="hospital" zoom-min="14">
    <symbol id="hospital" src="file:/symbols/hospital.svg" symbol-width="14" priority="0"/>
    <rule  e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="hospital" position="below" font-style="bold" font-size="11" fill="#E60000" stroke="#FFFFFF" stroke-width="3" priority="49" display="ifspace"/>
    </rule>
  </rule>
  <rule  e="any" k="amenity" v="clinic" zoom-min="17">
    <symbol id="clinic" src="file:/symbols/clinic.svg" symbol-width="14" priority="0"/>
    <rule  e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="clinic" position="below" font-style="normal" font-size="10" fill="#E60000" stroke="#FFFFFF" stroke-width="2" priority="49" display="ifspace"/>
    </rule>
  </rule>
  <rule  e="any" k="amenity" v="doctors" zoom-min="17">
    <symbol id="doctors" src="file:/symbols/doctors.svg" symbol-width="14" priority="0"/>
  </rule>
  <rule cat="default" e="any" k="amenity" v="fuel" zoom-min="16">
    <symbol src="file:/symbols/fuel.svg" symbol-width="14" priority="0"/>
  </rule>
  <rule cat="default" e="any" k="amenity" v="charging_station" zoom-min="16">
    <symbol src="file:/symbols/charging_station.svg" symbol-width="14" priority="0"/>
  </rule>
  <rule cat="default" e="any" k="amenity" v="fire_station" zoom-min="16">
    <symbol src="file:/symbols/fire_station.svg" symbol-width="14" priority="0"/>
  </rule>
  <rule cat="default" e="any" k="amenity" v="police" zoom-min="16">
    <symbol id="police"  src="file:/symbols/police_station.svg" symbol-width="14" priority="0"/>
      <rule cat="default" e="any" k="*" v="*" zoom-min="17">
        <caption k="name" symbol-id="police" position="below" font-style="bold" font-size="9" fill="#550000" stroke="#ffffff" stroke-width="2"/>
      </rule>
  </rule>

  
  <rule cat="accommodation" e="any" k="tourism" v="hotel" zoom-min="16">
      <symbol id="hotel" src="file:/symbols/hotel.svg" symbol-width="12"/>
      <caption k="name" symbol-id="hotel" position="below" font-style="bold" font-size="10" fill="#000080" stroke="#FFFFFF" stroke-width="3" display="ifspace"/>
  </rule>
  <rule cat="accommodation" e="any" k="tourism" v="guest_house" zoom-min="16">
      <symbol id="guesthouse" src="file:/symbols/hotel.svg" symbol-width="12"/>
      <caption k="name" symbol-id="guesthouse" position="below" font-style="bold" font-size="10" fill="#000080" stroke="#FFFFFF" stroke-width="3" display="ifspace"/>
  </rule>
  <rule cat="accommodation" e="any" k="tourism" v="hostel" zoom-min="16">
      <symbol id="hostel" src="file:/symbols/hostel.svg" symbol-width="12"/>
      <caption k="name" symbol-id="hostel" position="below" font-style="bold" font-size="10" fill="#000080" stroke="#FFFFFF" stroke-width="3" display="ifspace"/>
  </rule>
  <rule cat="accommodation" e="any" k="tourism" v="camp_site" zoom-min="16">
    <symbol id="camp" src="file:/symbols/camping.svg" symbol-width="12"/>
    <caption k="name" symbol-id="camp" position="below" font-style="bold" font-size="10" fill="#000080" stroke="#FFFFFF" stroke-width="3" display="ifspace"/>
  </rule>
  <rule cat="accommodation" e="any" k="tourism" v="caravan_site" zoom-min="16">
    <symbol id="caravan" src="file:/symbols/caravan.svg" symbol-width="12"/>
    <caption k="name" symbol-id="caravan" position="below" font-style="bold" font-size="10" fill="#000080" stroke="#FFFFFF" stroke-width="3" display="ifspace"/>
  </rule>
  <rule e="any" k="tourism" v="alpine_hut" zoom-min="15">
    <symbol id="hut" src="file:/symbols/alpine_hut.svg" symbol-width="14"/>
    <caption k="name" symbol-id="hut" position="below" font-style="bold" font-size="10" fill="#000080" stroke="#FFFFFF" stroke-width="3" display="ifspace"/>
  </rule>
  <rule e="any" k="tourism" v="wilderness_hut" zoom-min="15">
      <symbol src="file:/symbols/wilderness_hut.svg" symbol-width="14"/>
  </rule>
  <rule cat="topo_icons" e="node" k="amenity" v="shelter" zoom-min="16">
    <symbol src="file:/symbols/shelter.svg" symbol-width="12"/>
  </rule>


  <rule cat="topo_icons" e="node" k="amenity" v="hunting_stand" zoom-min="15">
    <symbol src="file:/symbols/hunting_stand.svg" symbol-width="16"/>
  </rule>

  <rule cat="topo_icons" e="node" k="natural" v="valley" zoom-min="15">
    <caption k="name" font-style="bold" font-size="10" fill="#A0666666" stroke="#ffffff" stroke-width="2"/>
  </rule>
  <rule cat="topo_icons" e="node" k="natural" v="saddle" zoom-min="15">
    <symbol id="saddle" src="file:/symbols/natural-saddle.svg" symbol-width="12" display="always"/>
    <rule e="node" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="saddle" position="above" font-style="bold" font-size="10" fill="#e9dca2" stroke="#760000" stroke-width="2"/>
      <caption k="ele" symbol-id="saddle" position="below" font-style="normal" font-size="9" fill="#000000" stroke="#ffffff" stroke-width="2"/>
    </rule>
  </rule>
  <rule cat="topo_icons" e="node" k="natural" v="cave_entrance" zoom-min="14">
    <symbol id="cave" src="file:/symbols/cave_entrance.svg" symbol-width="16" priority="30"/>
    <rule e="node" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="cave" position="below" font-style="bold" font-size="9" fill="#000000" stroke="#ffffff" stroke-width="2"/>
    </rule>
  </rule>
  <rule cat="topo_icons" e="node" k="waterway" v="waterfall" zoom-min="14">
    <symbol id="waterfall" src="file:/symbols/waterfall.svg" symbol-width="16"/>
    <rule e="node" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="waterfall" position="below" font-style="bold" font-size="9" fill="#4040ff" stroke="#ffffff" stroke-width="2"/>
    </rule>
  </rule>

  <rule e="node" k="man_made" v="adit" zoom-min="14">
    <rule e="node" k="disused" v="yes" zoom-min="14">
      <symbol id="adit" src="file:/symbols/adit2.svg" symbol-width="16"/>
      <rule e="node" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="adit" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0"/>
      </rule>
    </rule>
    <rule e="node" k="disused" v="~|no" zoom-min="14">
      <symbol id="adit2" src="file:/symbols/adit.svg" symbol-width="16"/>
      <rule e="node" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="adit2" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0"/>
      </rule>
    </rule>
  </rule>
  <rule e="node" k="man_made" v="mineshaft" zoom-min="14">
      <symbol id="mine" src="file:/symbols/mine.svg" symbol-width="12"/>
      <rule e="node" k="*" v="*" zoom-min="16">
          <caption k="name" symbol-id="mine" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0"/>
      </rule>
  </rule>
  <rule e="node" k="historic" v="mine" zoom-min="14">
    <symbol id="adit" src="file:/symbols/adit2.svg" symbol-width="16"/>
    <rule e="node" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="adit" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0"/>
    </rule>
  </rule>
    
  <rule cat="topo_icons" e="node" k="amenity" v="hunting_stand" zoom-min="15">
    <symbol src="file:/symbols/hunting_stand.svg" symbol-width="16"/>
  </rule>
  <rule cat="topo_icons" e="node" k="amenity" v="feeding_place|game_feeding" zoom-min="15">
    <symbol src="file:/symbols/feeding_place.svg" symbol-width="18"/>
  </rule>
  <rule e="node" k="tourism" v="viewpoint" zoom-min="15">
    <symbol src="file:/symbols/viewpoint.svg" symbol-width="12"/>
  </rule>

  <rule cat="topo_icons" e="node" k="natural" v="sinkhole" zoom-min="15">
    <symbol src="file:/symbols/natural-sinkhole.svg" symbol-width="16"/>  
  </rule>
  
  <rule e="any" k="historic" v="castle" zoom-min="14">
    <rule e="any" k="ruins" v="~">
      <rule e="any" k="castle_type" v="~|defensive|fortress">
        <symbol id="castle" src="file:/symbols/castle.svg" symbol-width="14" priority="20"/>        
      </rule>
      <rule e="any" k="castle_type" v="stately|palace">
        <symbol id="castle" src="file:/symbols/stately.svg" symbol-width="14" priority="20"/>        
      </rule>
      <rule e="any" k="castle_type" v="manor">
        <symbol id="castle" src="file:/symbols/manor.svg" symbol-width="14" priority="20"/>        
      </rule>
      <caption k="name" symbol-id="castle" position="below" font-style="bold" font-size="10" fill="#550000" stroke="#ffffff" stroke-width="2"/>
    </rule>
    <rule e="any" k="ruins" v="yes">
      <symbol id="ruins" src="file:/symbols/ruins.svg" symbol-width="14" priority="20"/>
      <caption k="name" symbol-id="ruins" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2"/>      
    </rule>
  </rule>
  <rule e="any" k="historic" v="ruins" zoom-min="14">
    <symbol id="ruins" src="file:/symbols/ruins.svg" symbol-width="16" priority="20"/>
    <caption k="name" symbol-id="ruins" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2"/>      
  </rule>  
  <rule e="any" k="tourism" v="museum" zoom-min="15">
    <symbol id="museum" src="file:/symbols/museum.svg" symbol-width="14"  priority="15"/>
    <rule e="any" k="*" v="*" zoom-min="17">
      <caption k="name" symbol-id="museum" position="below" font-style="bold" font-size="10" fill="#550000" stroke="#ffffff" stroke-width="2"/>
     </rule>      
  </rule>
  <rule e="any" k="tourism" v="zoo" zoom-min="16">
    <symbol id="zoo" src="file:/symbols/zoo.svg" symbol-width="16"/>
    <caption k="name" symbol-id="zoo" position="below" font-style="bold" font-size="10" fill="#550000" stroke="#ffffff" stroke-width="2"/>      
  </rule>
  <rule e="node" k="tourism" v="attraction" zoom-min="15">
    <symbol id="attraction" src="file:/symbols/attraction.svg" symbol-width="18" priority="10"/>
    <caption k="name" symbol-id="attraction" position="below" font-style="bold" font-size="10" fill="#734a08" stroke="#ffffff" stroke-width="2"/>
  </rule>

  <rule cat="topo_icons" e="any" k="man_made" v="tower|mast" zoom-min="15">
    <rule  e="any" k="tower:type" v="communication" zoom-min="15">
      <symbol src="file:/symbols/tower_comm.svg" symbol-width="16"/>
    </rule>
    <rule e="any" k="tower:type" v="observation" zoom-min="15">
      <symbol src="file:/symbols/tower_obs.svg" symbol-width="16"/>
    </rule>      
  </rule>

  <rule e="node" k="noexit" v="yes" zoom-min="17">
    <symbol src="file:/symbols/noexit.svg" symbol-width="10"/>
  </rule>
  
  <rule e="any" k="amenity" v="place_of_worship" zoom-min="16">
    <rule e="any" k="building" v="church"> 
      <symbol id="church" src="file:/symbols/church.svg" symbol-width="16"/>
      <caption k="name" symbol-id="church" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2"/>
    </rule>
  </rule>
  <rule e="node" k="historic" v="wayside_cross" zoom-min="17">
    <symbol src="file:/symbols/wayside_cross.svg" symbol-width="16" priority="10"/>
  </rule>

  <rule  e="node" k="highway" v="bus_stop" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-min="15" zoom-max="16">
      <symbol src="file:/symbols/bus-mini.svg" symbol-width="18" priority="0"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="17">
      <symbol id="busstop" src="file:/symbols/bus_stop.svg" symbol-width="12" priority="0"/>
      <caption k="name" symbol-id="busstop" position="below" font-style="normal" font-size="10" fill="#1E4BFF" stroke="#FFFFFF" stroke-width="3" priority="49" display="ifspace"/>  
    </rule>
  </rule>

  <rule cat="food" e="any" k="amenity" v="restaurant" zoom-min="16">
    <symbol id="restaurant" src="file:/symbols/restaurant.svg" symbol-width="14"/>
    <caption k="name" symbol-id="restaurant" position="below" font-style="bold" font-size="10" fill="#aa4400" stroke="#ffffff" stroke-width="2"/>
  </rule>
  <rule cat="food" e="any" k="amenity" v="pub" zoom-min="17">
    <symbol id="pub" src="file:/symbols/pub.svg" symbol-width="14"/>
    <caption k="name" symbol-id="pub" position="below" font-style="bold" font-size="10" fill="#aa4400" stroke="#ffffff" stroke-width="2"/>
  </rule>
  <rule cat="food" e="any" k="amenity" v="fast_food" zoom-min="17">
    <symbol id="fastfood" src="file:/symbols/fastfood.svg" symbol-width="14"/>
    <caption k="name" symbol-id="fastfood" position="below" font-style="bold" font-size="10" fill="#aa4400" stroke="#ffffff" stroke-width="2"/>
  </rule>
  <rule cat="food" e="any" k="amenity" v="cafe" zoom-min="17">
    <symbol id="cafe" src="file:/symbols/cafe.svg" symbol-width="14"/>
    <caption k="name" symbol-id="cafe" position="below" font-style="bold" font-size="10" fill="#aa4400" stroke="#ffffff" stroke-width="2"/>
  </rule>
  <rule cat="food" e="any" k="amenity" v="bar" zoom-min="17">
    <symbol id="bar" src="file:/symbols/bar.svg" symbol-width="14"/>
    <caption k="name" symbol-id="bar" position="below" font-style="bold" font-size="10" fill="#aa4400" stroke="#ffffff" stroke-width="2"/>
  </rule>
  
  <rule cat="shop" e="any" k="shop" v="*">
    <rule e="any" k="shop" v="supermarket|mall|department_store" zoom-min="16">
      <symbol id="supermarket" src="file:/symbols/supermarket.svg" symbol-width="14"/>
      <caption k="name" symbol-id="supermarket" position="below" font-style="bold" font-size="10" fill="#ffffff" stroke="#971583" stroke-width="2" display="ifspace"/>
   </rule>
    <rule e="any" k="shop" v="convenience" zoom-min="16">
      <symbol id="convenience" src="file:/symbols/convenience.svg" symbol-width="14"/>
      <caption k="name" symbol-id="convenience" position="below" font-style="bold" font-size="10" fill="#ffffff" stroke="#971583" stroke-width="2" display="ifspace"/>
    </rule>
    <rule e="any" k="shop" v="bakery" zoom-min="16">
      <symbol id="convenience" src="file:/symbols/bakery.svg" symbol-width="14"/>
      <caption k="name" symbol-id="bakery" position="below" font-style="bold" font-size="10" fill="#ffffff" stroke="#971583" stroke-width="2" display="ifspace"/>
    </rule>
    <rule e="any" k="shop" v="organic|greengrocer|ice_cream|butcher|confectionery|farm|chemnist" zoom-min="16">
      <symbol id="shops" src="file:/symbols/shop-other.svg" symbol-width="6" priority="-100"/>
      <caption k="name" symbol-id="shops" position="below" font-style="bold" font-size="10" fill="#ffffff" stroke="#971583" stroke-width="2" display="ifspace"/>
    </rule>    
  </rule>
  
  <rule e="any" k="amenity" v="pharmacy" zoom-min="16">
    <symbol id="pharmacy" src="file:/symbols/pharmacy.svg" symbol-width="14"/>
    <caption k="name" symbol-id="pharmacy" position="below" font-style="bold" font-size="10" fill="#008000" stroke="#ffffff" stroke-width="2"/>
  </rule>

  <rule cat="topo_icons" e="node" k="natural" v="tree" zoom-min="18">
    <symbol src="file:/symbols/tree.svg" symbol-width="14"/>
  </rule>
    
  <rule e="node" k="amenity" v="bench" zoom-min="18">
    <symbol src="file:/symbols/bench.svg" symbol-width="14"/>
  </rule>  

  <rule e="any" k="amenity" v="post_office" zoom-min="16">
    <symbol id="post" src="file:/symbols/post_office.svg" symbol-width="14"/>
    <caption k="name" symbol-id="post" position="below" font-style="bold" font-size="10" fill="#550000" stroke="#ffffff" stroke-width="2"/>
  </rule>

  <rule cat="sport" e="any" k="leisure" v="golf_course" zoom-min="15">
    <symbol id="golf" src="file:/symbols/golf.svg" symbol-width="14"/>
    <caption symbol-id="golf" k="name" font-style="normal" font-size="9" fill="#ffffff" stroke="#1b8389" stroke-width="3" display="ifspace"/>    
  </rule>
  <rule cat="sport" e="any" k="leisure" v="miniature_golf" zoom-min="16">
    <symbol id="minigolf" src="file:/symbols/minigolf.svg" symbol-width="14"/>
    <caption symbol-id="minigolf" k="name" font-style="normal" font-size="9" fill="#ffffff" stroke="#1b8389" stroke-width="3" display="ifspace"/>    
  </rule>
  <rule cat="sport" e="any" k="leisure" v="pitch|sports_centre|stadium" zoom-min="16">
    <rule e="any" k="sport" v="soccer">
      <symbol id="sporticon" src="file:/symbols/soccer.svg" symbol-width="14"/>
    </rule>
    <rule e="any" k="sport" v="ice_hockey">
      <symbol id="sporticon" src="file:/symbols/ice_hockey.svg" symbol-width="14"/>
    </rule>
    <rule e="any" k="sport" v="tennis">
      <symbol id="sporticon" src="file:/symbols/tennis.svg" symbol-width="14"/>
    </rule>
    <rule e="any" k="sport" v="9pin|10pin">
      <symbol id="sporticon" src="file:/symbols/bowling.svg" symbol-width="14"/>
    </rule>
    <rule e="any" k="sport" v="shooting">
      <symbol id="sporticon" src="file:/symbols/shooting.svg" symbol-width="14"/>
    </rule>
    <rule e="any" k="sport" v="swimming">
      <rule e="any" k="indoor" v="yes">
        <symbol id="sporticon" src="file:/symbols/swimming_indoor.svg" symbol-width="14"/>
      </rule>
      <rule e="any" k="indoor" v="~|no">
        <rule e="any" k="building" v="*">
          <symbol id="sporticon" src="file:/symbols/swimming_indoor.svg" symbol-width="14"/>
        </rule>
        <rule e="any" k="building" v="~">
          <symbol id="sporticon" src="file:/symbols/swimming_outdoor.svg" symbol-width="14"/>
        </rule>
      </rule>      
    </rule>
    <rule e="any" k="sport" v="multi">
      <symbol id="sporticon" src="file:/symbols/sport-multi.svg" symbol-width="14"/>
    </rule>
<!--    <rule e="any" k="sport" v="*">
      <symbol id="sporticon" src="file:/symbols/sport-unknown.svg" symbol-width="14" priority="-100"/>
    </rule> -->
    <caption symbol-id="sporticon" k="name" font-style="bold" font-size="10" fill="#ffffff" stroke="#1b8389" stroke-width="3" display="ifspace"/>
  </rule>
  
  <rule e="node" k="entrance" v="yes|main" zoom-min="19">
    <symbol src="file:/symbols/entrance-yes.svg" symbol-width="8" priority="-80"/>
  </rule>  
  <rule e="node" k="entrance" v="exit" zoom-min="19">
    <symbol src="file:/symbols/entrance-exit.svg" symbol-width="8" priority="-80"/>
  </rule>  

    <!-- house numbers -->
  <rule cat="building" e="way" k="addr:housenumber" v="*" zoom-min="19">
    <caption k="addr:housenumber" font-style="bold" font-size="7" fill="#000000" stroke="#ffffff" stroke-width="2" priority="-50" display="ifspace"/>
  </rule>
  <rule cat="building" e="node" k="addr:housenumber" v="*" zoom-min="19">
    <caption k="addr:housenumber" font-style="bold" font-size="7" fill="#000000" stroke="#ffffff" stroke-width="2" priority="-50" display="ifspace"/>
  </rule>
            
</xsl:template>

</xsl:stylesheet>
