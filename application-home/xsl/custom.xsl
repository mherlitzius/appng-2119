<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns="http://www.appng.org/schema/platform" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">
	<xsl:output method="xhtml" />

	<xsl:template match="action[@id='editPerson']/config/meta-data//field[@name eq 'lastname']" priority="2"
		mode="form">
		<xsl:param name="field-htmlid" tunnel="yes" />
		<xsl:param name="field-hidden" tunnel="yes" />
		<xsl:param name="field-type" tunnel="yes" />
		<xsl:param name="field-name" tunnel="yes" />
		<xsl:param name="action-data" tunnel="yes" />

		<div class="fieldcontainer {$field-htmlid}">
			<div class="field">
				<b>Custom XSL for: </b>
				<i>
					<xsl:value-of select="$action-data/result//field[@name eq 'name']/value" />
				</i>
				<br />
				<xsl:variable name="appId" select="/platform/content/application/@id" />
				<img src="/template_{$appId}/Darth-Vader-icon_34501.png" border="0" />
				<xsl:next-match />
			</div>
			<xsl:apply-templates select="messages" mode="#current" />
		</div>

	</xsl:template>
</xsl:stylesheet>
