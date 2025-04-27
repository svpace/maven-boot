<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns="http://maven.apache.org/POM/4.0.0"
	xmlns:pom="http://maven.apache.org/POM/4.0.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:strip-space elements="*"/>
	<xsl:template match="@* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="pom:project">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
			<parent>
				<groupId>org.springframework.boot</groupId>
				<artifactId>spring-boot-starter-parent</artifactId>
				<version>3.3.1</version>
				<relativePath/>
			</parent>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="pom:project/pom:artifactId/text()">maven-boot-spring</xsl:template>
	<xsl:template match="pom:modules"/>
	<xsl:template match="pom:pluginManagement/pom:plugins">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
			<plugin>
				<groupId>org.springframework.boot</groupId>
				<artifactId>spring-boot-maven-plugin</artifactId>
				<configuration>
					<excludes>
						<exclude>
							<groupId>org.projectlombok</groupId>
							<artifactId>lombok</artifactId>
						</exclude>
					</excludes>
				</configuration>
			</plugin>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
