<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<xsl:template name="poi">
  <rule cat="topo_common" e="node" k="natural" v="spring" zoom-min="12">
  <rule e="node" k="man_made" v="spring_box" >
    <rule e="node" k="drinking_water" v="yes" zoom-min="13">
      <symbol id="spring" src="file:/poi/spring-refitted-drink.svg" symbol-width="20" priority="80"/>
    </rule>
    <rule e="node" k="drinking_water" v="~|no"  zoom-min="14">
      <symbol id="spring" src="file:/poi/spring-refitted.svg" symbol-width="20" priority="80"/>
    </rule>
  </rule>
  <rule e="node" k="refitted" v="yes" zoom-min="13">
    <rule e="node" k="drinking_water" v="yes">
      <symbol id="spring" src="file:/poi/spring-refitted-drink.svg" symbol-width="20" priority="80"/>
    </rule>
  </rule>
  <rule e="node" k="refitted" v="~|no" zoom-min="13">
    <rule e="node" k="drinking_water" v="yes">
      <symbol id="spring" src="file:/poi/spring-drink.svg" symbol-width="20" priority="80"/>
    </rule>
  </rule>
  <rule e="node" k="refitted" v="yes" zoom-min="14">
    <rule e="node" k="drinking_water" v="~|no">
      <symbol id="spring" src="file:/poi/spring-refitted.svg" symbol-width="16" priority="80"/>
    </rule>
  </rule>
  <rule e="node" k="refitted" v="~|no" zoom-min="15">
    <rule e="node" k="drinking_water" v="~|no">
      <symbol id="spring" src="file:/poi/spring.svg" symbol-width="16" priority="80"/>
    </rule>
  </rule>
    <rule e="node" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="spring" position="below" font-style="bold" font-size="9" fill="#0092da" stroke="#ffffff" stroke-width="2" priority="20"/>
    </rule>
  </rule>
  
  <rule cat="topo_common" e="node" k="natural" v="hot_spring" zoom-min="12">
    <symbol id="hotspring" src="file:/poi/hot_spring.svg" symbol-width="20" priority="80"/>
    <rule e="node" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="hotspring" position="below" font-style="bold" font-size="9" fill="#0092da" stroke="#ffffff" stroke-width="2" priority="20"/>
    </rule>
  </rule>

  <rule cat="topo_icons" e="node" k="tourism" v="information" zoom-min="16">
    <rule e="node" k="information" v="map|board|office">
      <symbol id="tourisminfo" src="file:/poi/information.svg" symbol-width="16"/>
      <caption k="ref" symbol-id="tourisminfo" position="above" font-style="bold" font-size="10" fill="#005e00" stroke="#ffffff" stroke-width="2" priority="31"/>
      <rule e="any" k="*" v="*" zoom-min="17">
        <caption k="name" symbol-id="tourisminfo" position="below" font-style="bold" font-size="10" fill="#005e00" stroke="#ffffff" stroke-width="2" priority="30"/>
      </rule> 
    </rule>
  </rule>

  <rule cat="topo_common" e="node" k="leisure" v="firepit" zoom-min="13">
    <symbol id="firepit" src="file:/poi/fireplace.svg" symbol-width="16"/>
  </rule>

  <rule e="any" k="tourism" v="artwork" zoom-min="15">
    <symbol id="artwork" src="file:/poi/artwork.svg" symbol-width="16"/>
  </rule>

  <rule e="any" k="aeroway" v="aerodrome" zoom-min="13">
    <rule e="any" k="icao" v="*" zoom-min="13">
      <symbol id="airport" src="file:/poi/aerodrome.svg" symbol-width="14"/>
      <rule e="any" k="*" v="*" zoom-min="15">
        <caption k="name" symbol-id="airport" position="below" font-style="bold" font-size="11" fill="#1E4BFF" stroke="#FFFFFF" stroke-width="3" priority="49" display="ifspace"/>
      </rule>  
    </rule>
    <rule e="any" k="icao" v="~" zoom-min="16">
      <symbol id="airport" src="file:/poi/aerodrome.svg" symbol-width="14"/>
    </rule>
  </rule>
  
  <rule e="any" k="amenity" v="bus_station" zoom-min="15">
    <symbol id="busstation" src="file:/poi/bus_station.svg" symbol-width="14" priority="0"/>
    <rule  e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="busstation" position="below" font-style="bold" font-size="11" fill="#1E4BFF" stroke="#FFFFFF" stroke-width="3" priority="49" display="ifspace"/>
    </rule>
  </rule>

  <rule e="any" k="amenity" v="hospital" zoom-min="14">
    <symbol id="hospital" src="file:/poi/hospital.svg" symbol-width="14" priority="0"/>
    <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="hospital" position="below" font-style="bold" font-size="11" fill="#E60000" stroke="#FFFFFF" stroke-width="3" priority="49" display="ifspace"/>
    </rule>
  </rule>
  <rule e="any" k="amenity" v="clinic" zoom-min="16">
    <symbol id="clinic" src="file:/poi/clinic.svg" symbol-width="14" priority="0"/>
    <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="clinic" position="below" font-style="normal" font-size="10" fill="#E60000" stroke="#FFFFFF" stroke-width="2" priority="49" display="ifspace"/>
    </rule>
  </rule>
  <rule  e="any" k="amenity" v="doctors" zoom-min="17">
    <symbol id="doctors" src="file:/poi/doctors.svg" symbol-width="14" priority="0"/>
  </rule>
  <rule cat="default" e="any" k="amenity" v="fuel" zoom-min="16">
    <symbol src="file:/poi/fuel.svg" symbol-width="14" priority="0"/>
  </rule>
  <rule cat="default" e="any" k="amenity" v="charging_station" zoom-min="16">
    <symbol src="file:/poi/charging_station.svg" symbol-width="14" priority="0"/>
  </rule>
  <rule cat="default" e="any" k="amenity" v="fire_station" zoom-min="15">
    <symbol src="file:/poi/fire_station.svg" symbol-width="14" priority="0"/>
  </rule>
  <rule cat="default" e="any" k="amenity" v="police" zoom-min="15">
    <symbol id="police"  src="file:/poi/police_station.svg" symbol-width="14" priority="0"/>
      <rule cat="default" e="any" k="*" v="*" zoom-min="17">
        <caption k="name" symbol-id="police" position="below" font-style="bold" font-size="9" fill="#550000" stroke="#ffffff" stroke-width="2"/>
      </rule>
  </rule>

  
  <rule cat="accommodation" e="any" k="tourism" v="hotel" zoom-min="15">
      <symbol id="hotel" src="file:/poi/hotel.svg" symbol-width="12" priority="10"/>
      <caption k="name" symbol-id="hotel" position="below" font-style="bold" font-size="10" fill="#000080" stroke="#FFFFFF" stroke-width="3" display="ifspace" priority="8"/>
  </rule>
  <rule cat="accommodation" e="any" k="tourism" v="guest_house" zoom-min="15">
      <symbol id="guesthouse" src="file:/poi/hotel.svg" symbol-width="12" priority="10"/>
      <caption k="name" symbol-id="guesthouse" position="below" font-style="bold" font-size="10" fill="#000080" stroke="#FFFFFF" stroke-width="3" display="ifspace" priority="8"/>
  </rule>
  <rule cat="accommodation" e="any" k="tourism" v="hostel" zoom-min="15">
      <symbol id="hostel" src="file:/poi/hostel.svg" symbol-width="12" priority="10"/>
      <caption k="name" symbol-id="hostel" position="below" font-style="bold" font-size="10" fill="#000080" stroke="#FFFFFF" stroke-width="3" display="ifspace" priority="8"/>
  </rule>
  <rule cat="accommodation" e="any" k="tourism" v="camp_site" zoom-min="13">
    <symbol id="camp" src="file:/poi/camping.svg" symbol-width="12" priority="10"/>
    <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="camp" position="below" font-style="bold" font-size="10" fill="#000080" stroke="#FFFFFF" stroke-width="3" display="ifspace" priority="8"/>
    </rule>  
  </rule>
  <rule cat="accommodation" e="any" k="tourism" v="caravan_site" zoom-min="13">
    <symbol id="caravan" src="file:/poi/caravan.svg" symbol-width="12" priority="10"/>
    <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="caravan" position="below" font-style="bold" font-size="10" fill="#000080" stroke="#FFFFFF" stroke-width="3" display="ifspace" priority="8"/>
    </rule>  
  </rule>
  <rule e="any" k="tourism" v="alpine_hut" zoom-min="13">
    <symbol id="hut" src="file:/poi/alpine_hut.svg" symbol-width="14" priority="10"/>
    <rule e="any" k="*" v="*" zoom-min="14">
      <caption k="name" symbol-id="hut" position="below" font-style="bold" font-size="10" fill="#000080" stroke="#FFFFFF" stroke-width="3" display="ifspace" priority="8"/>
    </rule>  
  </rule>
  <rule e="any" k="tourism" v="wilderness_hut" zoom-min="13">
      <symbol src="file:/poi/wilderness_hut.svg" symbol-width="14" priority="10"/>
  </rule>
  <rule cat="topo_icons" e="node" k="amenity" v="shelter" zoom-min="13">
    <symbol src="file:/poi/shelter.svg" symbol-width="12" priority="10"/>
  </rule>


  <rule cat="topo_icons" e="node" k="amenity" v="hunting_stand" zoom-min="15">
    <symbol src="file:/poi/hunting_stand.svg" symbol-width="16"/>
  </rule>

  <rule cat="topo_icons" e="node" k="natural" v="valley" zoom-min="15">
    <caption k="name" font-style="bold" font-size="10" fill="#A0666666" stroke="#ffffff" stroke-width="2"/>
  </rule>
  <rule cat="topo_icons" e="node" k="natural" v="saddle" zoom-min="15">
    <symbol id="saddle" src="file:/poi/natural-saddle.svg" symbol-width="12" display="always"/>
    <rule e="node" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="saddle" position="above" font-style="bold" font-size="10" fill="#e9dca2" stroke="#760000" stroke-width="2"/>
      <caption k="ele" symbol-id="saddle" position="below" font-style="normal" font-size="9" fill="#000000" stroke="#ffffff" stroke-width="2"/>
    </rule>
  </rule>
  <rule cat="topo_icons" e="node" k="natural" v="cave_entrance" zoom-min="14">
    <symbol id="cave" src="file:/poi/cave_entrance.svg" symbol-width="16" priority="30"/>
    <rule e="node" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="cave" position="below" font-style="bold" font-size="9" fill="#000000" stroke="#ffffff" stroke-width="2"/>
    </rule>
  </rule>
  <rule cat="topo_icons" e="node" k="waterway" v="waterfall" zoom-min="14">
    <symbol id="waterfall" src="file:/poi/waterfall.svg" symbol-width="16"/>
    <rule e="node" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="waterfall" position="below" font-style="bold" font-size="9" fill="#4040ff" stroke="#ffffff" stroke-width="2"/>
    </rule>
  </rule>

  <rule e="node" k="man_made" v="adit" zoom-min="14">
    <rule e="node" k="disused" v="yes" zoom-min="14">
      <symbol id="adit" src="file:/poi/adit2.svg" symbol-width="16"/>
      <rule e="node" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="adit" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0"/>
      </rule>
    </rule>
    <rule e="node" k="disused" v="~|no" zoom-min="14">
      <symbol id="adit2" src="file:/poi/adit.svg" symbol-width="16"/>
      <rule e="node" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="adit2" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0"/>
      </rule>
    </rule>
  </rule>
  <rule e="node" k="man_made" v="mineshaft" zoom-min="14">
      <symbol id="mine" src="file:/poi/mine.svg" symbol-width="12"/>
      <rule e="node" k="*" v="*" zoom-min="16">
          <caption k="name" symbol-id="mine" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0"/>
      </rule>
  </rule>
  <rule e="node" k="historic" v="mine" zoom-min="14">
    <symbol id="adit" src="file:/poi/adit2.svg" symbol-width="16"/>
    <rule e="node" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="adit" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2.0"/>
    </rule>
  </rule>
    
  <rule cat="topo_icons" e="node" k="amenity" v="hunting_stand" zoom-min="15">
    <symbol src="file:/poi/hunting_stand.svg" symbol-width="16"/>
  </rule>
  <rule cat="topo_icons" e="node" k="amenity" v="feeding_place" zoom-min="15">
    <rule e="node" k="feeding_type" v="manger|rack|hut">
      <symbol src="file:/poi/feeding_place.svg" symbol-width="18"/>
    </rule>
    <rule e="node" k="feeding_type" v="~">
      <symbol src="file:/poi/feeding_place.svg" symbol-width="18"/>
    </rule>
  </rule>
  <rule cat="topo_icons" e="node" k="amenity" v="game_feeding" zoom-min="15">
    <symbol src="file:/poi/feeding_place.svg" symbol-width="18"/>
  </rule>
  <rule e="node" k="tourism" v="viewpoint" zoom-min="15">
    <symbol src="file:/poi/viewpoint.svg" symbol-width="12"/>
  </rule>

  <rule cat="topo_icons" e="node" k="natural" v="sinkhole" zoom-min="15">
    <symbol src="file:/poi/natural-sinkhole.svg" symbol-width="16"/>  
  </rule>
  
  <rule e="any" k="historic" v="castle" zoom-min="13">
    <rule e="any" k="ruins" v="~">
      <rule e="any" k="castle_type" v="~|defensive|fortress">
        <symbol id="castle" src="file:/poi/castle.svg" symbol-width="14" priority="20"/>
      </rule>
      <rule e="any" k="castle_type" v="stately|palace">
        <symbol id="castle" src="file:/poi/stately.svg" symbol-width="14" priority="20"/>
      </rule>
      <rule e="any" k="castle_type" v="manor">
        <symbol id="castle" src="file:/poi/manor.svg" symbol-width="14" priority="20"/>
      </rule>
      <rule e="any" k="*" v="*" zoom-min="15">
        <caption k="name" symbol-id="castle" position="below" font-style="bold" font-size="10" fill="#550000" stroke="#ffffff" stroke-width="2"/>
      </rule>  
    </rule>
    <rule e="any" k="ruins" v="yes">
      <symbol id="ruins" src="file:/poi/ruins.svg" symbol-width="14" priority="20"/>
      <rule e="any" k="*" v="*" zoom-min="15">
        <caption k="name" symbol-id="ruins" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2"/>
      </rule>  
    </rule>
  </rule>
  <rule e="any" k="historic" v="ruins" zoom-min="14">
    <symbol id="ruins" src="file:/poi/ruins.svg" symbol-width="16" priority="20"/>
    <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="ruins" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2"/>
    </rule>
  </rule>  
  <rule e="any" k="tourism" v="museum" zoom-min="15">
    <symbol id="museum" src="file:/poi/museum.svg" symbol-width="14"  priority="15"/>
    <rule e="any" k="*" v="*" zoom-min="17">
      <caption k="name" symbol-id="museum" position="below" font-style="bold" font-size="10" fill="#550000" stroke="#ffffff" stroke-width="2"/>
     </rule>
  </rule>
  <rule e="any" k="tourism" v="zoo" zoom-min="15">
    <symbol id="zoo" src="file:/poi/zoo.svg" symbol-width="16"/>
    <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="zoo" position="below" font-style="bold" font-size="10" fill="#550000" stroke="#ffffff" stroke-width="2"/>
    </rule>  
  </rule>
  <rule e="any" k="tourism" v="attraction" zoom-min="14">
    <symbol id="attraction" src="file:/poi/attraction.svg" symbol-width="16" priority="10"/>
    <rule e="any" k="*" v="*" zoom-min="16">
      <caption k="name" symbol-id="attraction" position="below" font-style="bold" font-size="10" fill="#734a08" stroke="#ffffff" stroke-width="2"/>
    </rule>
  </rule>
  <rule e="any" k="amenity" v="toilets" zoom-min="17">
    <symbol id="toilets" src="file:/poi/toilets.svg" symbol-width="18" priority="10"/>
  </rule>
  <rule e="any" k="leisure" v="playground" zoom-min="17">
    <symbol id="playground" src="file:/poi/playground.svg" symbol-width="18" priority="10"/>
  </rule>

  <rule cat="topo_icons" e="any" k="man_made" v="tower|mast" zoom-min="15">
    <rule  e="any" k="tower:type" v="communication" zoom-min="15">
      <symbol src="file:/poi/tower_comm.svg" symbol-width="16"/>
    </rule>
    <rule e="any" k="tower:type" v="observation" zoom-min="15">
      <symbol src="file:/poi/tower_obs.svg" symbol-width="16"/>
    </rule>      
  </rule>

  <rule e="node" k="noexit" v="yes" zoom-min="17">
    <symbol src="file:/poi/noexit.svg" symbol-width="10"/>
  </rule>
  
  <rule e="any" k="amenity" v="place_of_worship" zoom-min="14">
    <rule e="any" k="building" v="cathedral|church"> 
      <symbol id="church" src="file:/poi/church.svg" symbol-width="16"/>
      <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="church" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2"/>
      </rule>
    </rule>
    <rule e="any" k="building" v="chapel"> 
      <symbol id="chapel" src="file:/poi/chapel.svg" symbol-width="16"/>
      <rule e="any" k="*" v="*" zoom-min="16">
        <caption k="name" symbol-id="chapel" position="below" font-style="bold" font-size="10" fill="#000000" stroke="#ffffff" stroke-width="2"/>
      </rule>
    </rule>
  </rule>
  <rule e="node" k="historic" v="wayside_cross" zoom-min="16">
    <symbol src="file:/poi/wayside_cross.svg" symbol-width="16" priority="10"/>
  </rule>
  <rule e="any" k="historic" v="wayside_shrine" zoom-min="16">
    <symbol src="file:/poi/wayside_shrine.svg" symbol-width="16" priority="10"/>
  </rule>
  <rule  e="node" k="highway" v="bus_stop" zoom-min="15">
    <rule  e="any" k="*" v="*" zoom-min="15" zoom-max="16">
      <symbol src="file:/poi/bus-mini.svg" symbol-width="18" priority="0"/>
    </rule>
    <rule  e="any" k="*" v="*" zoom-min="17">
      <symbol id="busstop" src="file:/poi/bus_stop.svg" symbol-width="12" priority="0"/>
      <caption k="name" symbol-id="busstop" position="below" font-style="normal" font-size="10" fill="#1E4BFF" stroke="#FFFFFF" stroke-width="3" priority="49" display="ifspace"/>
    </rule>
  </rule>

  <rule cat="food" e="any" k="amenity" v="restaurant" zoom-min="14">
    <symbol id="restaurant" src="file:/poi/restaurant.svg" symbol-width="14" priority="10"/>
    <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="restaurant" position="below" font-style="bold" font-size="10" fill="#aa4400" stroke="#ffffff" stroke-width="2" priority="8"/>
    </rule>  
  </rule>
  <rule cat="food" e="any" k="amenity" v="pub" zoom-min="14">
    <symbol id="pub" src="file:/poi/pub.svg" symbol-width="14" priority="10"/>
    <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="pub" position="below" font-style="bold" font-size="10" fill="#aa4400" stroke="#ffffff" stroke-width="2" priority="8"/>
    </rule>  
  </rule>
  <rule cat="food" e="any" k="amenity" v="fast_food" zoom-min="14">
    <symbol id="fastfood" src="file:/poi/fastfood.svg" symbol-width="14" priority="10"/>
    <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="fastfood" position="below" font-style="bold" font-size="10" fill="#aa4400" stroke="#ffffff" stroke-width="2" priority="8"/>
    </rule>  
  </rule>
  <rule cat="food" e="any" k="amenity" v="cafe" zoom-min="14">
    <symbol id="cafe" src="file:/poi/cafe.svg" symbol-width="14" priority="10"/>
    <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="cafe" position="below" font-style="bold" font-size="10" fill="#aa4400" stroke="#ffffff" stroke-width="2" priority="8"/>
    </rule>  
  </rule>
  <rule cat="food" e="any" k="amenity" v="bar" zoom-min="14">
    <symbol id="bar" src="file:/poi/bar.svg" symbol-width="14" priority="10"/>
    <rule e="any" k="*" v="*" zoom-min="15">
      <caption k="name" symbol-id="bar" position="below" font-style="bold" font-size="10" fill="#aa4400" stroke="#ffffff" stroke-width="2" priority="8"/>
    </rule>  
  </rule>
  
  <rule cat="shop" e="any" k="shop" v="*">
    <rule e="any" k="shop" v="supermarket|mall|department_store" zoom-min="16">
      <symbol id="supermarket" src="file:/poi/supermarket.svg" symbol-width="14"/>
      <caption k="name" symbol-id="supermarket" position="below" font-style="bold" font-size="10" fill="#ffffff" stroke="#971583" stroke-width="2" display="ifspace"/>
   </rule>
    <rule e="any" k="shop" v="convenience" zoom-min="16">
      <symbol id="convenience" src="file:/poi/convenience.svg" symbol-width="14"/>
      <caption k="name" symbol-id="convenience" position="below" font-style="bold" font-size="10" fill="#ffffff" stroke="#971583" stroke-width="2" display="ifspace"/>
    </rule>
    <rule e="any" k="shop" v="bakery" zoom-min="16">
      <symbol id="convenience" src="file:/poi/bakery.svg" symbol-width="14"/>
      <caption k="name" symbol-id="bakery" position="below" font-style="bold" font-size="10" fill="#ffffff" stroke="#971583" stroke-width="2" display="ifspace"/>
    </rule>
    <rule e="any" k="shop" v="organic|greengrocer|ice_cream|butcher|confectionery|farm|chemnist" zoom-min="16">
      <symbol id="shops" src="file:/poi/shop-other.svg" symbol-width="6" priority="-100"/>
      <caption k="name" symbol-id="shops" position="below" font-style="bold" font-size="10" fill="#ffffff" stroke="#971583" stroke-width="2" display="ifspace"/>
    </rule>    
  </rule>
  
  <rule e="any" k="amenity" v="pharmacy" zoom-min="16">
    <symbol id="pharmacy" src="file:/poi/pharmacy.svg" symbol-width="14"/>
    <caption k="name" symbol-id="pharmacy" position="below" font-style="bold" font-size="10" fill="#008000" stroke="#ffffff" stroke-width="2"/>
  </rule>

  <rule cat="topo_icons" e="node" k="natural" v="tree" zoom-min="18">
    <symbol src="file:/poi/tree.svg" symbol-width="14"/>
  </rule>
    
  <rule e="node" k="amenity" v="bench" zoom-min="18">
    <symbol src="file:/poi/bench.svg" symbol-width="14"/>
  </rule>  

  <rule e="any" k="amenity" v="post_office" zoom-min="16">
    <symbol id="post" src="file:/poi/post_office.svg" symbol-width="14"/>
    <caption k="name" symbol-id="post" position="below" font-style="bold" font-size="10" fill="#550000" stroke="#ffffff" stroke-width="2"/>
  </rule>

  <rule cat="sport" e="any" k="leisure" v="horse_riding" zoom-min="15">
    <symbol id="horseriding" src="file:/poi/sport-horse_riding.svg" symbol-width="14"/>
    <caption symbol-id="horseriding" k="name" font-style="normal" font-size="9" fill="#ffffff" stroke="#1b8389" stroke-width="3" display="ifspace"/>
  </rule>
  <rule cat="sport" e="any" k="leisure" v="golf_course" zoom-min="15">
    <symbol id="golf" src="file:/poi/sport-golf.svg" symbol-width="14"/>
    <caption symbol-id="golf" k="name" font-style="normal" font-size="9" fill="#ffffff" stroke="#1b8389" stroke-width="3" display="ifspace"/>
  </rule>
  <rule cat="sport" e="any" k="leisure" v="miniature_golf" zoom-min="16">
    <symbol id="minigolf" src="file:/poi/sport-minigolf.svg" symbol-width="14"/>
    <caption symbol-id="minigolf" k="name" font-style="normal" font-size="9" fill="#ffffff" stroke="#1b8389" stroke-width="3" display="ifspace"/>
  </rule>
  <rule cat="sport" e="any" k="leisure" v="shooting_ground" zoom-min="16">
    <symbol id="sporticon" src="file:/poi/sport-shooting.svg" symbol-width="14"/>
    <caption symbol-id="sporticon" k="name" font-style="bold" font-size="10" fill="#ffffff" stroke="#1b8389" stroke-width="3" display="ifspace"/>
  </rule>
  <rule cat="sport" e="any" k="leisure" v="pitch|sports_centre|stadium" zoom-min="16">
    <rule e="any" k="sport" v="soccer">
      <symbol id="sporticon" src="file:/poi/sport-soccer.svg" symbol-width="14"/>
    </rule>
    <rule e="any" k="sport" v="ice_hockey">
      <symbol id="sporticon" src="file:/poi/sport-ice_hockey.svg" symbol-width="14"/>
    </rule>
    <rule e="any" k="sport" v="tennis">
      <symbol id="sporticon" src="file:/poi/sport-tennis.svg" symbol-width="14"/>
    </rule>
    <rule e="any" k="sport" v="9pin|10pin">
      <symbol id="sporticon" src="file:/poi/sport-bowling.svg" symbol-width="14"/>
    </rule>
    <rule e="any" k="sport" v="shooting">
      <symbol id="sporticon" src="file:/poi/sport-shooting.svg" symbol-width="14"/>
    </rule>
    <rule e="any" k="sport" v="swimming">
      <rule e="any" k="indoor" v="yes">
        <symbol id="sporticon" src="file:/poi/sport-swimming_indoor.svg" symbol-width="14"/>
      </rule>
      <rule e="any" k="indoor" v="~|no">
        <rule e="any" k="building" v="*">
          <symbol id="sporticon" src="file:/poi/sport-swimming_indoor.svg" symbol-width="14"/>
        </rule>
        <rule e="any" k="building" v="~">
          <symbol id="sporticon" src="file:/poi/sport-swimming_outdoor.svg" symbol-width="14"/>
        </rule>
      </rule>
    </rule>
    <rule e="any" k="sport" v="multi">
      <symbol id="sporticon" src="file:/poi/sport-multi.svg" symbol-width="14"/>
    </rule>
<!--    <rule e="any" k="sport" v="*">
      <symbol id="sporticon" src="file:/poi/sport-unknown.svg" symbol-width="14" priority="-100"/>
    </rule> -->
    <caption symbol-id="sporticon" k="name" font-style="bold" font-size="10" fill="#ffffff" stroke="#1b8389" stroke-width="3" display="ifspace"/>
  </rule>
  
  <rule e="node" k="entrance" v="yes|main" zoom-min="19">
    <symbol src="file:/poi/entrance-yes.svg" symbol-width="8" priority="-80"/>
  </rule>  
  <rule e="node" k="entrance" v="exit" zoom-min="19">
    <symbol src="file:/poi/entrance-exit.svg" symbol-width="8" priority="-80"/>
  </rule>  

  <rule e="any" k="tourism" v="yes" zoom-min="15">
    <caption k="name" position="center" font-style="bold" font-size="10" fill="#005e00" stroke="#ffffff" stroke-width="2" display="ifspace"/>
  </rule>
  
  <rule e="any" k="amenity" v="fountain" zoom-min="17">
    <symbol id="fountain" src="file:/poi/fountain.svg" symbol-width="16" priority="-80"/>
    <caption symbol-id="fountain" k="name" position="below" font-style="bold" font-size="10" fill="#0000FF" stroke="#ffffff" stroke-width="2" display="ifspace"/>
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
