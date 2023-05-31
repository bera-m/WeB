<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
   <table class = "tab" style="text-align:center">
     <tr bgcolor="#895bc4">
       <th>Название</th>
       <th>Компания</th>
       <th >Скорость</th>
       <th >Ядра</th>
       <th >Изображение</th>
     </tr>
     <xsl:for-each select="catalog/type">
     
     <tr>
       <td><xsl:value-of select="name" /></td>
       <td><xsl:value-of select="company" /></td>
       <td><xsl:value-of select="speed" /></td>
       <td><xsl:value-of select="cores" /></td>
       <td><img style="width: 100px" src="{manyimgs}"></img></td>       
     </tr>
     </xsl:for-each>
   </table>
</xsl:template>

</xsl:stylesheet>

