<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family: Arial; font-size: 12pt; background-color: #EEE">
   <xsl:for-each select="catalog/type">
      <xsl:sort select="name" />
      <div style="background-color: #895bc4; color: white; padding: 4px">
         <span style="font-weight: bold"><xsl:value-of select="name"/></span>
      </div>
      <div style="margin-left: 20px; margin-bottom: 1em; font-size: 12pt">
         <p>           
         <xsl:value-of select="name"/>
         <br/>
         <xsl:value-of select="company" />
         <br/>
       <xsl:value-of select="speed" />
       <br/>
       <xsl:value-of select="cores" />
       <br/>
			 Изображение:
			 <img style="width: 100px" src="{manyimgs}"></img>
        <xsl:if test="position()!=last()"><hr/></xsl:if>
        </p>         
      </div>
   </xsl:for-each>
</body>
</html>
