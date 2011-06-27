<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:db="http://docbook.org/ns/docbook"
                version='1.0'>
                
<!-- Style sheet that translates a Docbook chapter into (trac-)wiki markup

     The docbook support is very limited:
     
     Input file must contain exactly one <chapter>
     
     <chapter> must have <title>,
     then one or more <para> and <sect1>.
     
     <sect1> must have <title>.
     May include <para> and <sect2>
     
     Other markup:
     
     <itemizedlist> or <orderedlist> each with <listitem>
     
     <code>, <filename>, <programlisting>, <emphasis>
     
     Kay Kasemir
  -->

<xsl:output method="xml" omit-xml-declaration="yes"/>

<!-- Chapter: Show title, process sections -->
<xsl:template match="db:chapter">
{{{
#!comment
Note:
This wiki source was generated from a DocBook file.
Instead of modifying the wiki text you might prefer to
edit the original DocBook file, because otherwise your
wiki text changes could later be overridden when the
wiki text is re-generated from the DocBook file.
}}}

= <xsl:value-of select="db:title"/> =

[[PageOutline]]

<xsl:apply-templates select="db:para"/>
<xsl:apply-templates select="db:sect1"/>
</xsl:template>

<!-- Sections: Show title, process paragraphs -->
<xsl:template match="db:sect1">
== <xsl:value-of select="db:title"/> ==
<xsl:apply-templates select="db:sect2"/>
<xsl:apply-templates select="db:para"/>
</xsl:template>

<xsl:template match="db:sect2">
=== <xsl:value-of select="db:title"/> ===
<xsl:apply-templates select="db:para"/>
</xsl:template>


<!-- Add another newline after paragraphs -->
<xsl:template match="db:para">
<xsl:apply-templates/>
<xsl:text>
</xsl:text>
</xsl:template>

<!-- Escape filename, programlisting, emphasis, ... -->
<xsl:template match="db:filename">{{{<xsl:value-of select="."/>}}}</xsl:template>

<!--  Copy code verbatim, NOT escaping '<' as '&lt;' and so on -->
<xsl:template match="db:programlisting">
{{{
<xsl:value-of select="." disable-output-escaping="yes"/>
}}}
</xsl:template>

<xsl:template match="db:code">{{{<xsl:value-of select="." disable-output-escaping="yes"/>}}}</xsl:template>

<xsl:template match="db:emphasis">
<xsl:text>__</xsl:text><xsl:value-of select="."/><xsl:text>__</xsl:text>
</xsl:template>

<xsl:template match="db:quote">
"<xsl:value-of select="."/>"
</xsl:template>


<!-- indexterm, primary are NOT correctly handled! -->
<xsl:template match="db:indexterm">
</xsl:template>



<!-- Lists-->
<xsl:template match="db:itemizedlist">
<xsl:apply-templates select="db:listitem" mode="bullet"/>
</xsl:template>

<xsl:template match="db:orderedlist">
<xsl:apply-templates select="db:listitem" mode="number"/>
</xsl:template>

<!-- normalize-space(.) to place list item text on one line,
     to avoid gaps in the wiki output
  -->
<xsl:template match="db:listitem" mode="number">
<xsl:text>  1. </xsl:text><xsl:value-of select="normalize-space(.)"/><xsl:text>
</xsl:text>
</xsl:template>

<xsl:template match="db:listitem" mode="bullet">
<xsl:text>  * </xsl:text><xsl:value-of select="normalize-space(.)"/><xsl:text>
</xsl:text>
</xsl:template>


                
</xsl:stylesheet>