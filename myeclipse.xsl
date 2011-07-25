<?xml version='1.0'?> 
<xsl:stylesheet  
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 

<!-- Should use a catalog, but couldn't get that to work... -->
<!-- html/docbook.xsl for one page, chunk.xsl for many pages
<xsl:import href="/usr/local/docbook-xsl-1.76.1/html/docbook.xsl"/> 

-->
<xsl:import href="docbook-xsl-1.76.1/eclipse/eclipse.xsl"/> 

<!--
Generation of Eclipse help sorta works:
It generates chunked HTML with example toc.xml
and plugin.xml.
The latter 2 need to be edited resp. the
help section inside the plugin.xml is copied
into the "real" plugin.xml.
After editing, one can usually just copy the new HTML
files, leaving the *.xml as they were.
-->

<xsl:param name="html.stylesheet">doc.css</xsl:param>

<xsl:param name="generate.toc">0</xsl:param>
<xsl:param name="generate.index">0</xsl:param>
<xsl:param name="chapter.autolabel">0</xsl:param>

<xsl:param name="toc.section.depth">2</xsl:param>


</xsl:stylesheet>  