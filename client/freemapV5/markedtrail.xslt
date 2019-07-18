<?xml-stylesheet type="text/xsl"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://mapsforge.org/renderTheme" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <xsl:variable name="yellow">#CCEECB00</xsl:variable>
    <xsl:variable name="green">#CC009900</xsl:variable>
    <xsl:variable name="blue">#CC3233FF</xsl:variable>
    <xsl:variable name="red">#CCFE0000</xsl:variable>
    <xsl:variable name="alternative">#CCFF00FF</xsl:variable>
    <xsl:variable name="fallback">#AA000000</xsl:variable>

    <xsl:variable name="offset1low">1</xsl:variable>
    <xsl:variable name="offset2low">2.8</xsl:variable>
    <xsl:variable name="offset3low">4.7</xsl:variable>
    <xsl:variable name="offset4low">6.6</xsl:variable>

    <xsl:variable name="offset1high">0.7</xsl:variable>
    <xsl:variable name="offset2high">1.5</xsl:variable>
    <xsl:variable name="offset3high">2.3</xsl:variable>
    <xsl:variable name="offset4high">3.1</xsl:variable>

    <xsl:variable name="markedTrailWidthLow">1.7</xsl:variable>
    <xsl:variable name="markedTrailWidthHigh">0.9</xsl:variable>

    <xsl:variable name="zoomlow">11</xsl:variable>
    <xsl:variable name="zoomhigh">15</xsl:variable>

<xsl:variable name="zoomlow2"><xsl:value-of select="$zoomhigh - 1"/></xsl:variable>

<xsl:template name="markedTrailsSingle">
  <xsl:param name="redKey" />
  <xsl:param name="blueKey" />
  <xsl:param name="greenKey" />
  <xsl:param name="yellowKey" />
  <xsl:param name="fallbackKey" />

  <xsl:param name="side" />
  <xsl:param name="offset" />

  <xsl:param name="dasharray" />
  
  <xsl:variable name="backgroundTrailWidthLow"><xsl:value-of select="$markedTrailWidthLow + 0.6"/></xsl:variable>
  <xsl:variable name="backgroundTrailWidthHigh"><xsl:value-of select="$markedTrailWidthHigh + 0.4"/></xsl:variable>
  <xsl:variable name="off1low"><xsl:value-of select="$side * ($offset + $offset1low)"/></xsl:variable>
  <xsl:variable name="off2low"><xsl:value-of select="$side * ($offset + $offset2low)"/></xsl:variable>
  <xsl:variable name="off3low"><xsl:value-of select="$side * ($offset + $offset3low)"/></xsl:variable>
  <xsl:variable name="off4low"><xsl:value-of select="$side * ($offset + $offset4low)"/></xsl:variable>
  <xsl:variable name="off1high"><xsl:value-of select="$side * ($offset + $offset1high)"/></xsl:variable>
  <xsl:variable name="off2high"><xsl:value-of select="$side * ($offset + $offset2high)"/></xsl:variable>
  <xsl:variable name="off3high"><xsl:value-of select="$side * ($offset + $offset3high)"/></xsl:variable>
  <xsl:variable name="off4high"><xsl:value-of select="$side * ($offset + $offset4high)"/></xsl:variable>


  <rule e="way" k="{$redKey}" v="*">
      <rule e="way" k="{$blueKey}" v="*">
          <rule e="way" k="{$greenKey}" v="*">
              <rule e="way" k="{$yellowKey}" v="*">
                  <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />                    
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off3low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off4low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                    <line stroke="{$red}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                    <line stroke="{$blue}" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                    <line stroke="{$green}" dy="{$off3low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                    <line stroke="{$yellow}" dy="{$off4low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  </rule>  
                  <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />                    
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off3high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off4high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                    <line stroke="{$red}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                    <line stroke="{$blue}" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                    <line stroke="{$green}" dy="{$off3high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                    <line stroke="{$yellow}" dy="{$off4high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  </rule>
              </rule>

              <rule e="way" k="{$yellowKey}" v="~">
                  <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />                    
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off3low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                    <line stroke="{$red}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                    <line stroke="{$blue}" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                    <line stroke="{$green}" dy="{$off3low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  </rule>
                  <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />                    
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off3high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                    <line stroke="{$red}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                    <line stroke="{$blue}" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                    <line stroke="{$green}" dy="{$off3high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  </rule>
              </rule>
          </rule>

          <rule e="way" k="{$greenKey}" v="~">
              <rule e="way" k="{$yellowKey}" v="*">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">              
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />                    
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off3low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />                
                  <line stroke="{$red}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  <line stroke="{$blue}" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  <line stroke="{$yellow}" dy="{$off3low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">              
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />                    
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off3high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />                
                  <line stroke="{$red}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  <line stroke="{$blue}" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  <line stroke="{$yellow}" dy="{$off3high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                </rule>
              </rule>

              <rule e="way" k="{$yellowKey}" v="~">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />                    
                  <line stroke="{$red}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  <line stroke="{$blue}" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />                    
                  <line stroke="{$red}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  <line stroke="{$blue}" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                </rule>
              </rule>
          </rule>
      </rule>

      <rule e="way" k="{$blueKey}" v="~">
          <rule e="way" k="{$greenKey}" v="*">
              <rule e="way" k="{$yellowKey}" v="*">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />                    
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off3low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line stroke="{$red}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  <line stroke="{$green}" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  <line stroke="{$yellow}" dy="{$off3low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />                    
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off3high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line stroke="{$red}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  <line stroke="{$green}" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  <line stroke="{$yellow}" dy="{$off3high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                </rule>
              </rule>

              <rule e="way" k="{$yellowKey}" v="~">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />                    
                  <line stroke="{$red}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  <line stroke="{$green}" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />                    
                  <line stroke="{$red}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  <line stroke="{$green}" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                </rule>
              </rule>
          </rule>

          <rule e="way" k="{$greenKey}" v="~">
              <rule e="way" k="{$yellowKey}" v="*">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />                    
                  <line stroke="{$red}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  <line stroke="{$yellow}" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />                    
                  <line stroke="{$red}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  <line stroke="{$yellow}" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                </rule>
              </rule>

              <rule e="way" k="{$yellowKey}" v="~">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line stroke="{$red}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line stroke="{$red}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                </rule>
              </rule>
          </rule>
      </rule>
  </rule>

  <rule e="way" k="{$redKey}" v="~">
      <rule e="way" k="{$blueKey}" v="*">
          <rule e="way" k="{$greenKey}" v="*">
              <rule e="way" k="{$yellowKey}" v="*">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />                    
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off3low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />              
                  <line stroke="{$blue}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  <line stroke="{$green}" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  <line stroke="{$yellow}" dy="{$off3low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />                    
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off3high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />              
                  <line stroke="{$blue}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  <line stroke="{$green}" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  <line stroke="{$yellow}" dy="{$off3high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                </rule>
              </rule>

              <rule e="way" k="{$yellowKey}" v="~">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />                    
                  <line stroke="{$blue}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  <line stroke="{$green}" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />                    
                  <line stroke="{$blue}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  <line stroke="{$green}" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                </rule>
              </rule>
          </rule>

          <rule e="way" k="{$greenKey}" v="~">
              <rule e="way" k="{$yellowKey}" v="*">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />                    
                  <line stroke="{$blue}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  <line stroke="{$yellow}" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />                    
                  <line stroke="{$blue}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  <line stroke="{$yellow}" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                </rule>

              </rule>

              <rule e="way" k="{$yellowKey}" v="~">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line stroke="{$blue}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line stroke="{$blue}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                </rule>
              </rule>
          </rule>
      </rule>

      <rule e="way" k="{$blueKey}" v="~">
          <rule e="way" k="{$greenKey}" v="*">
              <rule e="way" k="{$yellowKey}" v="*">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />                    
                  <line stroke="{$green}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  <line stroke="{$yellow}" dy="{$off2low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />                    
                  <line stroke="{$green}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  <line stroke="{$yellow}" dy="{$off2high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                </rule>
              </rule>

              <rule e="way" k="{$yellowKey}" v="~">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                  <line stroke="{$green}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                  <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                  <line stroke="{$green}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                </rule>
              </rule>
          </rule>

          <rule e="way" k="{$greenKey}" v="~">
              <rule e="way" k="{$yellowKey}" v="*">
                <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                    <line stroke="{$yellow}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                  </rule>
                <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                    <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                    <line stroke="{$yellow}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                  </rule>
              </rule>

              <rule e="way" k="{$yellowKey}" v="~">
                  <rule e="way" k="{$fallbackKey}" v="*">
                    <rule e="way" k="*" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
                      <line cat="overlay" stroke="#FFFFFF" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthLow}" scale="all" />
                      <line stroke="{$fallback}" dy="{$off1low}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthLow}" scale="all" />
                    </rule>
                    <rule e="way" k="*" v="*" zoom-min="{$zoomhigh}">
                      <line cat="overlay" stroke="#FFFFFF" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$backgroundTrailWidthHigh}" scale="all" />
                      <line stroke="{$fallback}" dy="{$off1high}" stroke-dasharray="{$dasharray}" stroke-width="{$markedTrailWidthHigh}" scale="all" />
                    </rule>

                  </rule>
              </rule>
          </rule>
      </rule>
  </rule>
</xsl:template>

    <!-- cycle trails -->
<xsl:template name="cycletrails">
  <rule cat="cycle" e="way" k="highway" v="*" zoom-min="{$zoomlow}">
    <xsl:call-template name="markedTrailsSingle">
    <xsl:with-param name="redKey" select="'fmrelbicyclered'"/>
    <xsl:with-param name="blueKey" select="'fmrelbicycleblue'"/>
    <xsl:with-param name="greenKey" select="'fmrelbicyclegreen'"/>
    <xsl:with-param name="yellowKey" select="'fmrelbicycleyellow'"/>
    <xsl:with-param name="fallbackKey" select="'fmrelbicyclewhite|fmrelbicycleblack|fmrelbicycledefault'"/>
    <xsl:with-param name="side" select="-1"/>
    <xsl:with-param name="offset" select="0"/>
    <xsl:with-param name="dasharray" select="'0.1,2.5'"/>
    </xsl:call-template>
    <rule cat="trailnum" e="way" k="*" v="*" zoom-min="14">
      <caption k="fmrelbicycleref" font-style="bold" font-size="9" fill="#000000" stroke="#D5EBFF" stroke-width="4" display="always" priority="100"/>
    </rule>
  </rule>
</xsl:template>

<xsl:template name="mtbtrails">
  <rule cat="cycle" e="way" k="highway" v="*" zoom-min="{$zoomlow}">
    <xsl:call-template name="markedTrailsSingle">
    <xsl:with-param name="redKey" select="'fmrelmtbred'"/>
    <xsl:with-param name="blueKey" select="'fmrelmtbblue'"/>
    <xsl:with-param name="greenKey" select="'fmrelmtbgreen'"/>
    <xsl:with-param name="yellowKey" select="'fmrelmtbyellow'"/>
    <xsl:with-param name="fallbackKey" select="'fmrelmtbwhite|fmrelmtbblack|fmrelmtbdefault'"/>
    <xsl:with-param name="side" select="-1"/>
    <xsl:with-param name="offset" select="0"/>
    <xsl:with-param name="dasharray" select="'0.3,5'"/>
    </xsl:call-template>
    <rule cat="trailnum" e="way" k="*" v="*" zoom-min="14">
      <caption k="fmrelmtbref" font-style="bold" font-size="9" fill="#000000" stroke="#D5EBFF" stroke-width="4" display="always" priority="100"/>
    </rule>
  </rule>
</xsl:template>

<xsl:template name="skitrails">
  <rule cat="ski" e="way" k="highway" v="*" zoom-min="{$zoomlow}">
    <xsl:call-template name="markedTrailsSingle">
      <xsl:with-param name="redKey" select="'fmrelskired'"/>
      <xsl:with-param name="blueKey" select="'fmrelskiblue'"/>
      <xsl:with-param name="greenKey" select="'fmrelskigreen'"/>
      <xsl:with-param name="yellowKey" select="'fmrelskiyellow'"/>
      <xsl:with-param name="fallbackKey" select="'fmrelskiwhite|fmrelskiblack|fmrelskidefault'"/>
      <xsl:with-param name="side" select="-1"/>
      <xsl:with-param name="offset" select="0"/>
      <xsl:with-param name="dasharray" select="'4,2.5'"/>
    </xsl:call-template>
    <rule cat="trailnum" e="way" k="*" v="*" zoom-min="14">
      <caption k="fmrelskiref" font-style="bold" font-size="9" fill="#000000" stroke="#FFEEAA" stroke-width="4" display="always" priority="100"/>
    </rule>    
  </rule>
</xsl:template>

    <!-- hiking trails -->
<xsl:template name="hikingtrails">
  <rule cat="hiking" e="way" k="*" v="*" zoom-min="{$zoomlow}">
    <xsl:call-template name="markedTrailsSingle">
      <xsl:with-param name="redKey" select="'fmrelhikingredosmc'"/>
      <xsl:with-param name="blueKey" select="'fmrelhikingblueosmc'"/>
      <xsl:with-param name="greenKey" select="'fmrelhikinggreenosmc'"/>
      <xsl:with-param name="yellowKey" select="'fmrelhikingyellowosmc'"/>
      <xsl:with-param name="fallbackKey" select="'fmrelhikingwhite|fmrelhikingblack|fmrelhikingdefault'"/>
      <xsl:with-param name="side" select="1"/>
      <xsl:with-param name="offset" select="0"/>
      <xsl:with-param name="dasharray" select="'0.1,0.1'"/>
    </xsl:call-template>
    <rule cat="trailnum" e="way" k="fmrelhikingredosmc|fmrelhikingblueosmc|fmrelhikinggreenosmc|fmrelhikingyellowosmc" v="*" zoom-min="14">
      <caption k="fmrelhikingref" font-style="bold" font-size="9" fill="#000000" stroke="#DBFFA0" stroke-width="4" display="always" priority="100"/>
<!--      <pathText k="fmrelhikingref" font-style="bold" font-size="9" fill="#000000" stroke="#BFFF4E" stroke-width="3" display="always" priority="100" repeat-start="2" repeat-gap="20"/> -->
    </rule>
  </rule>
</xsl:template>

<xsl:template name="hikinglocaltrails">
  <rule cat="hikinglocal" e="way" k="*" v="*" zoom-min="{$zoomlow}">
    <xsl:call-template name="markedTrailsSingle">
      <xsl:with-param name="redKey" select="'fmrelhikinglocalredosmc'"/>
      <xsl:with-param name="blueKey" select="'fmrelhikinglocalblueosmc'"/>
      <xsl:with-param name="greenKey" select="'fmrelhikinglocalgreenosmc'"/>
      <xsl:with-param name="yellowKey" select="'fmrelhikinglocalyellowosmc'"/>
      <xsl:with-param name="fallbackKey" select="'fmrelhikinglocalwhite|fmrelhikinglocalblack|fmrelhikinglocaldefault'"/>
      <xsl:with-param name="side" select="1"/>
      <xsl:with-param name="offset" select="1"/>
      <xsl:with-param name="dasharray" select="'2,3'"/>
    </xsl:call-template>    
    <rule cat="trailnum" e="way" k="fmrelhikinglocalredosmc|fmrelhikinglocalblueosmc|fmrelhikinglocalgreenosmc|fmrelhikinglocalyellowosmc" v="*" zoom-min="14">
      <caption k="fmrelhikingref" font-style="bold" font-size="9" fill="#000000" stroke="#DBFFA0" stroke-width="4" display="always" priority="100"/>
<!--      <pathText k="fmrelhikingref" font-style="bold" font-size="9" fill="#000000" stroke="#BFFF4E" stroke-width="3" display="always" priority="100" repeat-start="2" repeat-gap="20"/>-->
    </rule>
  </rule>
</xsl:template>

<xsl:template name="ksttrails">
  <rule cat="hikingkst" e="way" k="fmrelhikingoperatorred|fmrelhikingoperatorgreen|fmrelhikingoperatorblue|fmrelhikingoperatoryellow|fmrelhikinglocaloperatorred|fmrelhikinglocaloperatorgreen|fmrelhikinglocaloperatorblue|fmrelhikinglocaloperatoryellow" v="KST|KST BB|cz:KČT" zoom-min="11">
    <xsl:call-template name="markedTrailsSingle">
      <xsl:with-param name="redKey" select="'fmrelhikingredosmc'"/>
      <xsl:with-param name="blueKey" select="'fmrelhikingblueosmc'"/>
      <xsl:with-param name="greenKey" select="'fmrelhikinggreenosmc'"/>
      <xsl:with-param name="yellowKey" select="'fmrelhikingyellowosmc'"/>
      <xsl:with-param name="fallbackKey" select="'fmrelhikingwhite|fmrelhikingblack|fmrelhikingdefault'"/>
      <xsl:with-param name="side" select="1"/>
      <xsl:with-param name="offset" select="0"/>
      <xsl:with-param name="dasharray" select="'0.1,0.1'"/>
    </xsl:call-template>
    <rule cat="trailnum" e="way" k="*" v="*" zoom-min="14">
      <caption k="fmrelhikingref" font-style="bold" font-size="9" fill="#000000" stroke="#DBFFA0" stroke-width="4" display="always" priority="100"/>
    </rule>
    <xsl:call-template name="markedTrailsSingle">
      <xsl:with-param name="redKey" select="'fmrelhikinglocalredosmc'"/>
      <xsl:with-param name="blueKey" select="'fmrelhikinglocalblueosmc'"/>
      <xsl:with-param name="greenKey" select="'fmrelhikinglocalgreenosmc'"/>
      <xsl:with-param name="yellowKey" select="'fmrelhikinglocalyellowosmc'"/>
      <xsl:with-param name="fallbackKey" select="'fmrelhikinglocalwhite|fmrelhikinglocalblack|fmrelhikinglocaldefault'"/>
      <xsl:with-param name="side" select="1"/>
      <xsl:with-param name="offset" select="1"/>
      <xsl:with-param name="dasharray" select="'1,2'"/>
    </xsl:call-template>
    <rule cat="trailnum" e="way" k="*" v="*" zoom-min="14">
      <caption k="fmrelhikingref" font-style="bold" font-size="9" fill="#000000" stroke="#BFFF4E" stroke-width="4" display="always" priority="100"/>
    </rule>
  </rule>
</xsl:template>

<xsl:template name="naucho">
    <rule cat="naucho" e="way" k="fmreleducation" v="*" zoom-min="{$zoomlow}" zoom-max="{$zoomlow2}">
      <line stroke="#AAFFFFFF" stroke-dasharray="2,3" stroke-width="2.2" stroke-linecap="round" scale="all" />
      <line stroke="#FF008800" stroke-dasharray="2,3" stroke-width="1" stroke-linecap="butt" scale="all" />
    </rule>
    <rule cat="naucho" e="way" k="fmreleducation" v="*" zoom-min="{$zoomhigh}">
      <line stroke="#AAFFFFFF" stroke-dasharray="2,3" stroke-width="1.2" stroke-linecap="round" scale="all" />
      <line stroke="#FF008800" stroke-dasharray="2,3" stroke-width="0.5" stroke-linecap="butt" scale="all" />
    </rule>
    <rule cat="naucho" e="way" k="*" v="*" zoom-min="14">
      <rule cat="trailnum" e="way" k="*" v="*">
        <pathText k="fmreleducationname" dy="2" font-style="bold" font-size="9" fill="#FFFFFF" stroke="#008800" stroke-width="3" display="always" priority="100"/>
      </rule>
    </rule>
</xsl:template>

<xsl:template name="sac-scale">
  <rule cat="sac-scale" e="way" k="sac_scale" v="*" zoom-min="13">
    <rule e="way" k="sac_scale" v="hiking">
      <line stroke="#50FFFF00" stroke-width="4" stroke-linecap="butt" />
    </rule>
    <rule e="way" k="sac_scale" v="mountain_hiking|demanding_mountain_hiking">
      <line stroke="#50FF0000" stroke-width="4" stroke-linecap="butt" />
    </rule>
    <rule e="way" k="sac_scale" v="alpine_hiking|demandig_alpine_hiking">
      <line stroke="#500000FF" stroke-width="4" stroke-linecap="butt" />
    </rule>
  </rule>
</xsl:template>

<xsl:template name="mtb-scale">
  <rule cat="mtb-scale" e="way" k="mtb:scale" v="*" zoom-min="14">
<!-- MTB scale -->
    <rule e="way" k="mtb:scale" v="0">
      <lineSymbol src="file:/symbols/mtbscale0.svg" align-center="true" repeat="true" repeat-start="2" repeat-gap="30" symbol-width="7" priority="20" display="always" />   
    </rule>
    <rule e="way" k="mtb:scale" v="1">
      <lineSymbol src="file:/symbols/mtbscale1.svg" align-center="true" repeat="true" repeat-start="2" repeat-gap="30" symbol-width="7" priority="20" display="always" />   
    </rule>
    <rule e="way" k="mtb:scale" v="2">
      <lineSymbol src="file:/symbols/mtbscale2.svg" align-center="true" repeat="true" repeat-start="2" repeat-gap="30" symbol-width="7" priority="20" display="always" />   
    </rule>
    <rule e="way" k="mtb:scale" v="3">
      <lineSymbol src="file:/symbols/mtbscale3.svg" align-center="true" repeat="true" repeat-start="2" repeat-gap="30" symbol-width="7" priority="20" display="always" />   
    </rule>
    <rule e="way" k="mtb:scale" v="4">
      <lineSymbol src="file:/symbols/mtbscale4.svg" align-center="true" repeat="true" repeat-start="2" repeat-gap="30" symbol-width="7" priority="20" display="always" />   
    </rule>
    <rule e="way" k="mtb:scale" v="5">
      <lineSymbol src="file:/symbols/mtbscale5.svg" align-center="true" repeat="true" repeat-start="2" repeat-gap="30" symbol-width="7" priority="20" display="always" />   
    </rule>
<!-- uphill MTB scale -->
    <rule e="way" k="mtb:scale:uphill" v="0">
      <lineSymbol src="file:/symbols/mtbscalehill0.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="30" symbol-width="7" priority="20" display="always" />   
    </rule>
    <rule e="way" k="mtb:scale:uphill" v="1">
      <lineSymbol src="file:/symbols/mtbscalehill1.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="30" symbol-width="7" priority="20" display="always" />   
    </rule>
    <rule e="way" k="mtb:scale:uphill" v="2">
      <lineSymbol src="file:/symbols/mtbscalehill2.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="30" symbol-width="7" priority="20" display="always" />   
    </rule>
    <rule e="way" k="mtb:scale:uphill" v="3">
      <lineSymbol src="file:/symbols/mtbscalehill3.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="30" symbol-width="7" priority="20" display="always" />   
    </rule>
    <rule e="way" k="mtb:scale:uphill" v="4">
      <lineSymbol src="file:/symbols/mtbscalehill4.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="30" symbol-width="7" priority="20" display="always" />   
    </rule>
    <rule e="way" k="mtb:scale:uphill" v="5">
      <lineSymbol src="file:/symbols/mtbscalehill5.svg" align-center="true" repeat="true" repeat-start="15" repeat-gap="30" symbol-width="7" priority="20" display="always" />   
    </rule>
  </rule>
</xsl:template>

</xsl:stylesheet>
