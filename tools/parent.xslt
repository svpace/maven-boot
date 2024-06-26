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

	<!--xsl:template match="p:modelVersion">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*"/>
		</xsl:copy>
		<xsl:element name="parent">
			<groupId>org.springframework.boot</groupId>
			<artifactId>spring-boot-starter-parent</artifactId>
			<version>3.3.1</version>
			<relativePath/>
		</xsl:element>

	</xsl:template-->

	<xsl:template match="p:project/p:artifactId/text()">maven-boot-parent</xsl:template>
	<xsl:template match="p:assertj.version"/>
	<xsl:template match="p:awaitility.version"/>
	<xsl:template match="p:build-helper-maven-plugin.version"/>
	<xsl:template match="p:git-commit-id-maven-plugin.version"/>
	<xsl:template match="p:java.version"/>
	<xsl:template match="p:junit-jupiter.version"/>
	<xsl:template match="p:maven-assembly-plugin.version"/>
	<xsl:template match="p:maven-compiler-plugin.version"/>
	<xsl:template match="p:plugin[p:artifactId/text() = 'maven-compiler-plugin']"/>
</xsl:stylesheet>
