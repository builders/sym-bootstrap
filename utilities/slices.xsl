<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
  version="1.0"
  encoding="UTF-8"
  indent="yes"/>

<xsl:template match="/">
  <group>
    <!-- Grab every second item to create a slice. -->
    <xsl:for-each select="group/item[position() mod 2 = 1]">
      <slice>
        <item>
          <xsl:value-of select="text()"/>
        </item>
        <xsl:if test="following-sibling::item[1]">
          <item>
            <xsl:value-of select="following-sibling::item[1]/text()"/>
          </item>
        </xsl:if>
      </slice>
    </xsl:for-each>
  </group>
</xsl:template>

<xsl:template match="group">
  <group>
    <!-- Grab every third item to create a slice. -->
    <xsl:for-each select="group/item[position() mod 3 = 1]">
      <slice>
        <xsl:copy-of select="." />
        <xsl:if test="following-sibling::item[1]">
          <xsl:copy-of select="following-sibling::item[1]" />
        </xsl:if>
        <xsl:if test="following-sibling::item[2]">
          <xsl:copy-of select="following-sibling::item[2]" />
        </xsl:if>
      </slice>
    </xsl:for-each>
  </group>
</xsl:template>

</xsl:stylesheet>