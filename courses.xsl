<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <meta charset="utf-8" />
    <title>My Courses</title>
</head>
<body>
	<h1>Courses I enjoy:</h1>
		<table style="width:100%;" border="1">
			<tr>
				<th>Par</th>
				<th>Handicap</th>
				<th>Length</th>
				<th>Name</th>
				<th>Comments</th>
			</tr>
			<xsl:for-each select="/course/holes/hole">
			<tr>
				<td><xsl:value-of select="par"/></td>
				<td><xsl:value-of select="handicap"/></td>
				<td><xsl:value-of select="length"/></td>
				<td><xsl:value-of select="name"/></td>
				<td><xsl:value-of select="comments"/></td>
			</tr>
		</xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>