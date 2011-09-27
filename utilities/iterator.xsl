<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:exsl="http://exslt.org/common"
  extension-element-prefixes="exsl">

<xsl:template name="iterator">
    <xsl:param name="start" select="'1'"/>
    <xsl:param name="iterations" select="$iterations"/>
    <xsl:param name="direction" select="'+'"/>
    <xsl:param name="callback"/>
    <xsl:param name="callback-params"/>

    <xsl:param name="count" select="$iterations"/>

    <xsl:if test="$callback and $count > 0">

        <xsl:variable name="position">
            <xsl:choose>
                <xsl:when test="$direction='-'"><xsl:value-of select="$start - ($iterations - $count)"/></xsl:when>
                <xsl:otherwise><xsl:value-of select="$start + ($iterations - $count)"/></xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:variable name="callback-node">
            <xsl:element name="{$callback}">
                <xsl:if test="$callback-params">
                    <xsl:copy-of select="$callback-params"/>
                </xsl:if>
            </xsl:element>
        </xsl:variable>

        <xsl:apply-templates select="exsl:node-set($callback-node)" mode="iterator-callback">
            <xsl:with-param name="position" select="$position"/>
        </xsl:apply-templates>

        <xsl:call-template name="iterator">
            <xsl:with-param name="start" select="$start"/>
            <xsl:with-param name="iterations" select="$iterations"/>
            <xsl:with-param name="direction" select="$direction"/>
            <xsl:with-param name="callback" select="$callback"/>
            <xsl:with-param name="callback-params" select="$callback-params"/>
            <xsl:with-param name="count" select="$count - 1"/>
        </xsl:call-template>

    </xsl:if> 

</xsl:template>

</xsl:stylesheet>