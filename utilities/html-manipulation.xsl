<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:strip-space elements="*" />
<xsl:output method="xml" indent="yes" />

<!-- Default HTML Manipulation. Do not change these -->
<xsl:template match="*" mode="html">
	<xsl:element name="{name()}">
		<xsl:apply-templates select="* | @* | text()" mode="html"/>
	</xsl:element>
</xsl:template>
<xsl:template match="@*" mode="html">
	<xsl:attribute name="{name()}">
		<xsl:value-of select="."/>
	</xsl:attribute>
</xsl:template>



<!-- Format Relative URLs -->
<xsl:template match="@href | @src" mode="html">
		<xsl:attribute name="{name()}">
				<xsl:choose>
						<xsl:when test="starts-with(.,'/')"><xsl:value-of select="concat($root,.)" /></xsl:when>
						<xsl:otherwise><xsl:value-of select="." /></xsl:otherwise>
				</xsl:choose>
		</xsl:attribute>
</xsl:template>



<!-- Easy YouTube Embed (http://symphony-cms.com/discuss/thread/44118/)-->
<xsl:template match="p[starts-with(., 'http://www.youtube.com/watch?v=')]" mode="html">
	<p>
		<xsl:element name="object">
			<xsl:attribute name="type">application/x-shockwave-flash</xsl:attribute>
			<xsl:attribute name="width">560</xsl:attribute>
			<xsl:attribute name="height">350</xsl:attribute>
			<xsl:attribute name="class">youtube-embed</xsl:attribute>
			<xsl:attribute name="data">
					http://www.youtube.com/v/<xsl:value-of 
					select="normalize-space(substring-after(., 'http://www.youtube.com/watch?v='))"/>
			</xsl:attribute>
			<xsl:element name="param">
					<xsl:attribute name="name">movie</xsl:attribute>
					<xsl:attribute name="value">
							http://www.youtube.com/v/<xsl:value-of 
							select="normalize-space(substring-after(., 'http://www.youtube.com/watch?v='))"/>
					</xsl:attribute>
			</xsl:element>
			<xsl:element name="param">
					<xsl:attribute name="name">wmode</xsl:attribute>
					<xsl:attribute name="value">transparent</xsl:attribute>
			</xsl:element>
		</xsl:element>
	</p>
</xsl:template>

</xsl:stylesheet>