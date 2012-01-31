<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>TV-spel</title>
  <style>
  body {
    font-family: sans-serif;
    background: url(xml.jpg);
  }
  table, th, td {
    color: white;
    border: 1px solid gray;
    border-collapse: collapse;
    padding: 4px;
  }
  td > p {
      margin-top: 0;
  }
  td > p:last-child {
      margin-bottom: 0;
  }
  td:nth-child(1) {
      width: 60px;
  }
  td:nth-child(2) {
      width: 60px;
  }
  td:nth-child(3) {
      width: 150px;
  }
  h1 {
    color: #fff;
  }
  h2 {
    color: #fff;
  }

  </style>
  </head>
  <body>
  <h1>TV-spel</h1>  
    <xsl:apply-templates />
  </body>
  </html>
</xsl:template>

<xsl:template match="//spel">
  <h2><xsl:value-of select="namn"/></h2>
  <table>
  <tr>
    <th>Namn</th>
    <th>Genre</th>
    <th>Betyg</th>
    <th>Plattformar</th>
  </tr>
  <tr>
    <xsl:apply-templates />
  </tr>
  </table>
</xsl:template>

<xsl:template match="//namn">
  <td><xsl:value-of select="." /></td>
</xsl:template>

<xsl:template match="//genre">
  <td><xsl:value-of select="." /></td>
</xsl:template>

<xsl:template match="//betyg">
  <td>
    <p>Betyg: <xsl:value-of select="." /></p>
    <p>Sattes av: <xsl:value-of select="@betygsattare" /></p>
  </td>
</xsl:template>

<xsl:template match="//plattformar">
   <td><ul><xsl:apply-templates /></ul></td>
</xsl:template>

<xsl:template match="//plattform">
  <li><xsl:value-of select="." /></li>
</xsl:template>

</xsl:stylesheet>
