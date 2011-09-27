<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/bootstrap.xsl"/>

<xsl:template match="/">
  <html lang="en">
    <head>
      <meta name="description" content="" />
      <meta name="author" content="" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <xsl:apply-templates mode="page-title" />
      <xsl:apply-templates mode="cc" />
      <xsl:apply-templates mode="css" />
      <xsl:apply-templates mode="js" />
      <xsl:apply-templates mode="icons" />
    </head>
    <body>
      <xsl:apply-templates mode="nav" />
      <xsl:apply-templates mode="header" />
      <xsl:apply-templates />
      <xsl:apply-templates mode="footer" />
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>