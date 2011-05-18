To generate the document, you need

* ant for running build.xml

* Docbook XSL style sheets from https://sourceforge.net/projects/docbook/files/docbook-xsl/
I used version 1.76.1

* xsltproc for translating the XML sources into html, wiki, ...
It's included in Mac OS X and Linux.
You're on your own with other OS.

* Apache FOP for translating the XML sources into PDF.
One could translate the XML into XML-FO with xsltproc,
Apache FOP is really only needed for the XML-FO-to-PDF,
but it can also do the complete XML-to-PDF.

* To avoid warnings from FOP about missing hyphenation info,
one can add Hyphenation support to FOP:
Find offo-hyphenation-binary_v2.0.zip on the web,
unpack that into your installation of fop-1.0/lib.



In principle, the translation works like this:

 xsltproc /path/to/docbook-xsl-1.76.1/html/docbook.xsl my_book.xml  >out/my_book.html

or

 xsltproc wiki/docbook.xsl src/preferences.xml >out/preferences.wiki

or

 fop-1.0/fop -xsl /path/to/docbook-xsl-1.76.1/fo/docbook.xsl -xml my_book.xml  -pdf out/my_book.pdf



To tweak some settings, I use myhtml.xsl resp. mypdf.xsl to call the original docbook.xsl
and then adjust some settings.

What I have not figured out:
I always need the full path to the docbook-xsl.
Should use a "catalog", but have not managed to do that.


