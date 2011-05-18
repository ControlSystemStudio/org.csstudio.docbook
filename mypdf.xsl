<?xml version='1.0'?> 
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 

<!-- Should use a catalog, but couldn't get that to work... -->
<xsl:import href="/usr/local/docbook-xsl-1.76.1/fo/docbook.xsl"/> 

<xsl:param name="section.autolabel" select="1"/>
<xsl:param name="section.label.includes.component.label" select="1"/>
<xsl:param name="section.autolabel.max.depth" select="1"/>

<!-- Reduce spacing between list items -->
<xsl:attribute-set name="list.item.spacing">
  <xsl:attribute name="space-before.optimum">0em</xsl:attribute>
  <xsl:attribute name="space-before.minimum">0em</xsl:attribute>
  <xsl:attribute name="space-before.maximum">1.0em</xsl:attribute>
</xsl:attribute-set>

<xsl:param name="shade.verbatim" select="1"/>

<xsl:attribute-set name="verbatim.properties">
 <xsl:attribute name="space-before.minimum">0.0em</xsl:attribute>
 <xsl:attribute name="space-before.optimum">0.5em</xsl:attribute>
 <xsl:attribute name="space-before.maximum">1.0em</xsl:attribute>
 <xsl:attribute name="space-after.minimum">0.0em</xsl:attribute>
 <xsl:attribute name="space-after.optimum">0.5em</xsl:attribute>
 <xsl:attribute name="space-after.maximum">1.0em</xsl:attribute>
</xsl:attribute-set>

</xsl:stylesheet>  