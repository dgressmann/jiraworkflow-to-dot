<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text" encoding="utf-8" />

<xsl:template match="workflow">
digraph "<xsl:value-of select="meta[@name='jira.description']"/>" {
<xsl:for-each select="steps/step">
<xsl:value-of select="@id"/> [label="<xsl:value-of select="@name"/>"];
</xsl:for-each>
<xsl:for-each select="steps/step/actions/action">
	<xsl:value-of select="../../@id"/> -> <xsl:value-of select="results/unconditional-result[1]/@step"/> [label="<xsl:value-of select="@name"/>"];
</xsl:for-each>
}
</xsl:template>
</xsl:stylesheet>
