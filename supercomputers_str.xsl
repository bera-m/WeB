<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>Суперкомпьютеры</h2>
				<xsl:for-each select="catalog/type">
					<h3>
						<xsl:value-of select="title" />
					</h3>
					<p>
						<xsl:value-of select="description" />
					</p>
					<hr/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
