cs-studio-docbook [![Build Status](https://travis-ci.org/ControlSystemStudio/org.csstudio.docbook.svg?branch=master)](https://travis-ci.org/ControlSystemStudio/org.csstudio.docbook)
=================

Manual for building and using (much) of CS-Studio

This manual is automagically posted to http://cs-studio.sourceforge.net/docbook/ and http://cs-studio.sourceforge.net/docbook/css_book.pdf

Tools for Rendering from Sources
--------------------------------

To generate the document, you need

* ant for running build.xml
* Docbook XSL style sheets from https://sourceforge.net/projects/docbook/files/docbook-xsl/
  Tested was version 1.76.1.
  Use the install script to download automatically, or put a link in this directory named docbook-xsl-1.76.1 to where is installed on the system.
* xsltproc for translating the XML sources into html, wiki, ...
  Included in Mac OS X and Linux.
* Apache FOP for translating the XML sources into PDF.
  One could translate the XML into XML-FO with xsltproc.
  Apache FOP is really only needed for the XML-FO-to-PDF,
  but it can also do the complete XML-to-PDF.
* To avoid warnings from FOP about missing hyphenation info, add Hyphenation support to FOP:
  Find offo-hyphenation-binary_v2.0.zip on the web, unpack that into your installation of fop-1.0/lib.

Rendering Sources into Documents
--------------------------------

In principle, the translation works like this:

    # Create HTML Document
    xsltproc /path/to/docbook-xsl-1.76.1/html/docbook.xsl my_book.xml  >out/my_book.html

or

    # Create PDF Document 
    fop-1.0/fop -xsl /path/to/docbook-xsl-1.76.1/fo/docbook.xsl -xml my_book.xml  -pdf out/my_book.pdf

The ant build.xml also has additional targets for

 * Eclipse online help:
   Some documents are translated into corresponding CSS online help sections
 * Wiki:
   Used to be pushed to CSS wiki, no longer used

Internals
---------

To tweak some settings, I use myhtml.xsl resp. mypdf.xsl to call the original docbook.xsl
and then adjust some settings.

What I have not figured out:
I always need the full path to the docbook-xsl.
Should use a "catalog", but have not managed to do that.
Currently refer to the local directory: install here or use symlinks.



