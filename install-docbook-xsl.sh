#!/bin/bash
if [ ! -d "docbook-xsl-1.76.1" ]; then
  wget "http://downloads.sourceforge.net/project/docbook/docbook-xsl/1.76.1/docbook-xsl-1.76.1.tar.bz2?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fdocbook%2Ffiles%2Fdocbook-xsl%2F1.76.1%2F&ts=1306261698&use_mirror=cdnetworks-us-2" -O docbook-xsl.tar.bz2
  tar -xjvf docbook-xsl.tar.bz2
  rm docbook-xsl.tar.bz2
fi

if [ ! -d "fop-1.1" ]; then
  wget "http://www.fightrice.com/mirrors/apache/xmlgraphics/fop/binaries/fop-1.1-bin.tar.gz"
  tar zxvf fop-1.1-bin.tar.gz
  rm fop-1.1-bin.tar.gz
fi

