<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/html-manipulation.xsl"/>
<xsl:import href="../utilities/iterator.xsl"/>

<xsl:output method="xml"
  doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
  doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
  omit-xml-declaration="yes"
  encoding="UTF-8"
  indent="yes" />

<xsl:template match="data" mode="header">
  <xsl:comment> Masthead (blueprinty thing)
================================================== </xsl:comment>
  <header class="jumbotron masthead" id="overview">
    <div class="inner">
      <div class="container">
        <xsl:copy-of select="subsections/entry[section/item/@handle = 'bootstrap']/content/*" />
      </div>
    </div>
  </header>
</xsl:template>

<xsl:template match="data">
  <xsl:call-template name="quickstart" />
  <div class="page">
    <div class="sections">
      <div class="area">
        <xsl:apply-templates select="sections/entry" />
        <!-- ul class="sections">
          <xsl:apply-templates select="sections-by-section/parent-section[@link-id = '']/entry" />
        </ul -->
      </div>
    </div>
  </div>
  <xsl:apply-templates select="group" />
</xsl:template>

<xsl:template match="sections/entry">
  <xsl:choose>
    <xsl:when test="title/@handle = 'bootstrap'"></xsl:when>
    <xsl:when test="title/@handle = 'quickstart'"></xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="section" />
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="quickstart">
  <div class="quickstart">
    <div class="area">
      <div class="section thirds">
        <xsl:apply-templates select="/data/subsections/entry[section/item/@handle = 'quickstart']" mode="quickstart" />
      </div>
    </div>
  </div>
</xsl:template>

<xsl:template match="/data/subsections/entry" mode="quickstart">
  <div class="subsection">
    <div class="content">
      <xsl:copy-of select="content/*" />
    </div>
  </div>
</xsl:template>

<xsl:template name="section">
  <xsl:param name="index" select="0" />
  <xsl:param name="title-handle" select="title/@handle" />
  <xsl:param name="count" select="count(/data/subsections/entry[section/item/@handle = $title-handle])" />
  <xsl:param name="columns" select="columns" />
  <xsl:param name="grid">
    <xsl:call-template name="grid-columns">
      <xsl:with-param name="columns" select="$columns" />
    </xsl:call-template>
  </xsl:param>
  <xsl:choose>
    <xsl:when test="title/@handle = 'display-grids'">
      <xsl:apply-templates select="/data/subsections/entry[section/item/@handle = $title-handle]">
        <xsl:with-param name="count" select="$count" />
        <xsl:with-param name="title-handle" select="$title-handle" />
        <xsl:with-param name="columns" select="$columns" />
      </xsl:apply-templates>
    </xsl:when>
    <xsl:when test="$index &lt; $columns">
      <div class="section{$grid}" id="{url-handle/@handle}">
        <xsl:if test="display-header = 'Yes'">
          <xsl:attribute name="class"><xsl:text>section main-section</xsl:text><xsl:value-of select="$grid" /></xsl:attribute>
          <div class="content">
            <div class="page-header">
              <h1><xsl:value-of select="title" />
                <xsl:if test="subheading">
                  <xsl:text> </xsl:text>
                  <small><xsl:value-of select="subheading" /></small>
                </xsl:if>
              </h1>
            </div>
          </div>
        </xsl:if>
        <xsl:apply-templates select="/data/subsections/entry[section/item/@handle = $title-handle]">
          <xsl:with-param name="count" select="$count" />
          <xsl:with-param name="title-handle" select="$title-handle" />
          <xsl:with-param name="columns" select="$columns" />
        </xsl:apply-templates>
      </div>
    </xsl:when>
  </xsl:choose>
</xsl:template>

<xsl:template match="/data/subsections/entry">
  <xsl:param name="title-handle" />
  <xsl:param name="columns" />
  <xsl:param name="count" />
  <xsl:call-template name="subsections">
    <xsl:with-param name="columns" select="$columns" />
    <xsl:with-param name="count" select="$count" />
  </xsl:call-template>
</xsl:template>

<xsl:template name="subsections">
  <xsl:param name="columns" />
  <xsl:param name="count" />
  <xsl:param name="span" select="span" />
  <xsl:param name="index" select="position()" />
  <xsl:param name="class">
    <xsl:call-template name="subsection-class">
      <xsl:with-param name="columns" select="$columns" />
      <xsl:with-param name="span" select="$span" />
    </xsl:call-template>
  </xsl:param>
  <xsl:choose>
    <xsl:when test="title/@handle = 'display-grids'">
      <div class="sections {title/@handle}">
        <xsl:apply-templates select="content/*" mode="html" />
      </div>
    </xsl:when>
    <xsl:when test="$index &lt;= $columns and $span != $columns">
      <div class="subsection{$class}">
        <xsl:call-template name="content">
          <xsl:with-param name="index" select="$index" />
          <xsl:with-param name="count" select="$count" />
        </xsl:call-template>
      </div>
    </xsl:when>
    <xsl:otherwise>
      <div class="section">
        <xsl:call-template name="content">
          <xsl:with-param name="index" select="$index" />
          <xsl:with-param name="count" select="$count" />
        </xsl:call-template>
      </div>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="content">
  <xsl:param name="index" />
  <xsl:param name="count" />
  <div class="content">
    <!-- h2><xsl:value-of select="$index" />/<xsl:value-of select="$count" /></h2 -->
    <xsl:apply-templates select="content/*" mode="html" />
  </div>
</xsl:template>

<xsl:template name="grid-columns">
  <xsl:param name="columns" />
  <xsl:choose>
    <xsl:when test="$columns = 3"> thirds</xsl:when>
    <xsl:when test="$columns = 5"> fifths</xsl:when>
  </xsl:choose>
</xsl:template>

<xsl:template name="subsection-class">
  <xsl:param name="columns" />
  <xsl:param name="span" />
  <xsl:choose>
    <xsl:when test="$columns = 3">
      <xsl:choose>
        <xsl:when test="$span = 2"> compound</xsl:when>
      </xsl:choose>
    </xsl:when>
    <xsl:when test="$columns = 4">
      <xsl:choose>
        <xsl:when test="$span = 2"> compound</xsl:when>
        <xsl:when test="$span = 3"> complex</xsl:when>
      </xsl:choose>
    </xsl:when>
    <xsl:when test="$columns = 5">
      <xsl:choose>
        <xsl:when test="$span = 2"> compound</xsl:when>
        <xsl:when test="$span = 3"> complex</xsl:when>
        <xsl:when test="$span = 4"> compound-complex</xsl:when>
      </xsl:choose>
    </xsl:when>
    <xsl:when test="$columns = 6">
      <xsl:choose>
        <xsl:when test="$span = 1"> fragment</xsl:when>
        <xsl:when test="$span = 2"> simple</xsl:when>
        <xsl:when test="$span = 4"> compound</xsl:when>
      </xsl:choose>
    </xsl:when>
  </xsl:choose>
</xsl:template>

<xsl:template match="subsections" mode="three-columns">
  <group>
    <!-- Grab every third item to create a section. -->
    <xsl:apply-templates select='entry[position() mod 3 = 1]' mode='first-subsection' />
  </group>
</xsl:template> 

<xsl:template match="entry" mode="content">
  <div class="content"><xsl:apply-templates select="content/*" mode="html" /></div>
</xsl:template> 

<xsl:template match="entry" mode="first-subsection">
  <div class="subsection">
    <xsl:apply-templates select='.' mode='content' />
    <xsl:apply-templates select='following-sibling::item[1]' mode='content' />
    <xsl:apply-templates select='following-sibling::item[2]' mode='content' />
  </div>
</xsl:template> 

<xsl:template match="parent-section/entry">
  <li>
    <xsl:value-of select="title" />
    <xsl:if test="../../parent-section/@link-id = @id">
      <ul>
        <xsl:apply-templates select="../../parent-section[@link-id = current()/@id]/entry" />
      </ul>
    </xsl:if>
    <xsl:if test="/data/subsections/entry/section/item/@id = @id">
      <ul>
        <xsl:apply-templates select="/data/subsections/entry[section/item/@id = current()/@id]" mode="list-subsections" />
      </ul>
    </xsl:if>
  </li>
</xsl:template> 

<xsl:template match="subsections/entry" mode="list-subsections">
  <li>
    <xsl:value-of select="title" />
  </li>
</xsl:template> 

</xsl:stylesheet>