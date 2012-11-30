<?xml version="1.0" encoding="UTF-8"?>
<!-- XSLT file to add the security domains to the standalone.xml used during 
	the integration tests. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:module="urn:jboss:module:1.1" version="1.0">

	<xsl:output method="xml" indent="yes" />

	<xsl:template match="//module:module[@name='org.jboss.as.console']" />

	<xsl:template match="/">
		<module xmlns="urn:jboss:module:1.1" name="org.jboss.as.console" slot="eap">
			<resources>
				<resource-root path="picketlink-console-1.0.1.Final.war" />
			</resources>

			<dependencies>
			</dependencies>
		</module>
	</xsl:template>

	<!-- Copy everything else. -->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>