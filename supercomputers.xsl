<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- Отображение в виде таблицы -->
		<h2>XML в виде таблицы</h2>
		<table border="1">
			<tr>
				<th>Заголовок 1</th>
				<th>Заголовок 2</th>
				<th>Заголовок 3</th>
				<th>Графический файл</th>
			</tr>
			<xsl:apply-templates select="data/row"/>
		</table>

		<!-- Отображение построчно -->
		<h2>XML построчно</h2>
		<xsl:apply-templates select="data/row"/>
	</xsl:template>

	<xsl:template match="row">
		<!-- Отображение в виде таблицы -->
		<tr>
			<td>
				<xsl:value-of select="column[1]"/>
			</td>
			<td>
				<xsl:value-of select="column[2]"/>
			</td>
			<td>
				<xsl:value-of select="column[3]"/>
			</td>
			<td>
				<img src="{column[4]}" width="100" height="100"/>
				<!-- Задайте необходимые размеры -->
			</td>
		</tr>

		<!-- Отображение построчно -->
		<p>
			<strong>Заголовок 1:</strong>
			<xsl:value-of select="column[1]"/>
			<br/>
			<strong>Заголовок 2:</strong>
			<xsl:value-of select="column[2]"/>
			<br/>
			<strong>Заголовок 3:</strong>
			<xsl:value-of select="column[3]"/>
			<br/>
			<strong>Графический файл:</strong>
			<xsl:value-of select="column[4]"/>
			<br/>
		</p>
	</xsl:template>
</xsl:stylesheet>
