<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
  <html>
  <body>
    <h2>Vinos</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Nombre</th>
        <th>Precio</th>
      </tr>
      <xsl:apply-templates select="/viños/viño"/>
    </table>
  </body>
  </html>
</xsl:template>
<xsl:template match="viño">
  <xsl:variable name="precio" select="prezo"/>
  <xsl:variable name="color">
    <xsl:choose>
      <xsl:when test="$precio &lt;= 10">green</xsl:when>
      <xsl:when test="$precio &gt; 30">red</xsl:when>
      <xsl:otherwise>black</xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <tr>
    <td><xsl:value-of select="nome"/></td>
    <td><font color="{$color}"><xsl:value-of select="prezo"/></font></td>
  </tr>
</xsl:template>
</xsl:stylesheet>