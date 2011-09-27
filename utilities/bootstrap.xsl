<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="bootstrap-path" select="concat($workspace, '/bootstrap')" />

<xsl:template match="data" mode="page-title">
  <xsl:param name="site-name" select="$website-name" />
  <title>
    <!-- If not the homepage -->
    <xsl:if test="$current-path != '/'">
      <xsl:value-of select="$page-title" />
      <xsl:text> | </xsl:text>
    </xsl:if>
    <xsl:value-of select="$site-name"/>
  </title>
</xsl:template>

<xsl:template match="data" mode="cc">
  <xsl:comment> Le HTML5 shim, for IE6-8 support of HTML elements </xsl:comment>
  <xsl:comment><![CDATA[[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]]]></xsl:comment>
</xsl:template>

<xsl:template match="data" mode="css">
  <xsl:comment> Le styles </xsl:comment>
  <link rel="stylesheet" href="{$bootstrap-path}/bootstrap.css" />
  <link rel="stylesheet" href="{$bootstrap-path}/docs/assets/css/docs.css" />
  <link rel="stylesheet" href="{$bootstrap-path}/css/page.css" />
  <link rel="stylesheet" href="{$bootstrap-path}/css/sections.css" media="screen and (min-width: 601px)" />
  <link rel="stylesheet" href="{$bootstrap-path}/css/sections-fluid.css" media="screen and (min-width: 601px) and (max-width: 960px)" />
  <link rel="stylesheet" href="{$bootstrap-path}/css/display-grids.css" />
  <link rel="stylesheet" href="{$bootstrap-path}/docs/assets/js/google-code-prettify/prettify.css" />
  <link rel="stylesheet" href="{$bootstrap-path}/css/responsive.css" />
</xsl:template>

<xsl:template match="data" mode="js">
  <xsl:comment> Le javascript </xsl:comment>
  <script src="http://code.jquery.com/jquery-1.5.2.min.js"></script>
  <script src="http://autobahn.tablesorter.com/jquery.tablesorter.min.js"></script>
  <script src="{$bootstrap-path}/docs/assets/js/google-code-prettify/prettify.js"></script>
  <script>$(function () { prettyPrint() })</script>
  <script src="{$bootstrap-path}/js/bootstrap-dropdown.js"></script>
  <script src="{$bootstrap-path}/js/bootstrap-twipsy.js"></script>
  <script src="{$bootstrap-path}/js/bootstrap-scrollspy.js"></script>
  <script src="{$bootstrap-path}/docs/assets/js/application.js"></script>
</xsl:template>

<xsl:template match="data" mode="icons">
  <xsl:comment> Le fav and touch icons </xsl:comment>
  <link rel="shortcut icon" href="{$workspace}/assets/ico/favicon.ico" />
  <link rel="apple-touch-icon" href="{$workspace}/assets/ico/apple-touch-icon.png" />
  <link rel="apple-touch-icon" sizes="72x72" href="{$workspace}/assets/ico/apple-touch-icon-72x72.png" />
  <link rel="apple-touch-icon" sizes="114x114" href="{$workspace}/assets/ico/apple-touch-icon-114x114.png" />
</xsl:template>

<xsl:template match="data" mode="header">
  <xsl:comment> Masthead (blueprinty thing)
================================================== </xsl:comment>
  <header class="jumbotron masthead" id="overview">
    <div class="inner">
      <div class="container">
        <h1>Bootstrap, <br />from Twitter</h1>
        <p class="lead">
          Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites.<br />
          It includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.<br />
        </p>
        <p><strong>Nerd alert:</strong> Bootstrap is <a href="#less" title="Read about using Bootstrap with Less">built with Less</a> and was designed to work out of the gate with modern browsers in mind.</p>
      </div>
    </div>
  </header>
</xsl:template>

<xsl:template match="data" mode="nav">
  <xsl:comment> Topbar
================================================== </xsl:comment>
  <div class="topbar" data-scrollspy="scrollspy" >
    <div class="topbar-inner">
      <div class="container">
        <a class="brand" href="#">Bootstrap</a>
        <ul class="nav">
          <li class="active"><a href="#about">About</a></li>
          <li><a href="#grid-system">Grid</a></li>
          <li><a href="#layout">Layout</a></li>
          <li><a href="#typography">Type</a></li>
          <li><a href="#media">Media</a></li>
          <li><a href="#tables">Tables</a></li>
          <li><a href="#forms">Forms</a></li>
          <li><a href="#navigation">Navigation</a></li>
          <li><a href="#alerts">Alerts</a></li>
          <li><a href="#popovers">Popovers</a></li>
          <li><a href="#javascript">JavaScript</a></li>
          <li><a href="#less">Less</a></li>
        </ul>
      </div>
    </div>
  </div>
</xsl:template>

<xsl:template match="data" mode="footer">
  <footer class="footer">
    <div class="area">
      <div class="content">
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>Designed and built with all the love in the world <a href="http://twitter.com/twitter" target="_blank">@twitter</a>
          by <a href="http://twitter.com/mdo" target="_blank">@mdo</a> and <a href="http://twitter.com/fat" target="_blank">@fat</a>.<br />
          Adapted as a toolkit for responsive web design and development for the <a href="http://markuplibrary.org/">Markup Library</a>
          by <a href="http://www.domain7.com/team/stephen-bau/">Stephen Bau</a>.<br />
          Code licensed under the <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>.
          Documentation licensed under <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
      </div>
    </div>
  </footer>
</xsl:template>

</xsl:stylesheet>