<xsl:stylesheet
  version='1.0'
  xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
  <xsl:output method='xml' indent='yes'/>
  
<!-- http://blogs.msdn.com/b/marcelolr/archive/2009/06/02/simple-group-slicing-in-xslt.aspx -->

<!-- Template for a single item in a slice. -->
<xsl:template match='item' mode='inslice'>
  <item><xsl:value-of select='text()' /></item>
</xsl:template> 

<!-- Template for each slice. -->
<xsl:template match='item' mode='firstofslice'>
  <slice>
    <xsl:apply-templates select='.' mode='inslice' />
    <xsl:apply-templates select='following-sibling::item[1]' mode='inslice' />
    <!--
    "grow" the slice by adding more of these, but change the 'mod' below:
    <xsl:apply-templates select='following-sibling::item[2]' mode='inslice' />
    -->
  </slice>
</xsl:template> 

<xsl:template match='/'>
  <group>
    <!-- Grab every second item to create a slice. -->
    <xsl:apply-templates select='group/item[position() mod 2 = 1]' mode='firstofslice' />
  </group>
</xsl:template> 

</xsl:stylesheet>