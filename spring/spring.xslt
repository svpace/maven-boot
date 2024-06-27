<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns="http://maven.apache.org/POM/4.0.0"
	xmlns:p="http://maven.apache.org/POM/4.0.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:strip-space elements="*" />
	<xsl:template match="node()|@*">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="/p:project/p:modules"/>

	<xsl:template match="/p:project/p:modelVersion">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
		</xsl:copy>
		<xsl:element name="parent">
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-parent</artifactId>
			<version>3.3.1</version>
			<relativePath/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="/p:project/p:artifactId/text()">maven-boot-spring</xsl:template>
</xsl:stylesheet>
