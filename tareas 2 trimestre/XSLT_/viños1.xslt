<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>Información del Primer Vino</h2>
    <xsl:apply-templates select="/viños/viño[1]"/>
  </body>
  </html>
</xsl:template>

<xsl:template match="viño">
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Nome</th>
      <th style="text-align:left">Prezo</th>
    </tr>
    <tr>
      <td><xsl:value-of select="nome"/></td>
      <td><xsl:value-of select="prezo"/></td>
    </tr>
    </xsl:for-each>
  </table>
</xsl:template>
</xsl:stylesheet>