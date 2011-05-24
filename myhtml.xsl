<?xml version='1.0'?> 
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 

<!-- Should use a catalog, but couldn't get that to work... -->
<!-- html/docbook.xsl for one page, chunk.xsl for many pages
<xsl:import href="/usr/local/docbook-xsl-1.76.1/html/docbook.xsl"/> 

-->
<xsl:import href="docbook-xsl-1.76.1/html/chunk.xsl"/> 

<xsl:param name="html.stylesheet">doc.css</xsl:param>
<xsl:param name="toc.section.depth">0</xsl:param>

<!-- Don't chunk sections, only chapters -->
<xsl:param name="chunk.section.depth">0</xsl:param>


</xsl:stylesheet>  