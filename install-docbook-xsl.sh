#!/bin/bash
if [ ! -d "docbook-xsl-1.76.1" ]; then
  wget "http://downloads.sourceforge.net/project/docbook/docbook-xsl/1.76.1/docbook-xsl-1.76.1.tar.gz?r=&ts=1424375025&use_mirror=softlayer-dal" -O docbook-xsl.tar.gz
  tar -xzvf docbook-xsl.tar.bz2
  rm docbook-xsl.tar.bz2
fi

if [ ! -d "fop-1.1" ]; then
  wget "http://archive.apache.org/dist/xmlgraphics/fop/binaries/fop-1.1-bin.tar.gz"
  tar zxvf fop-1.1-bin.tar.gz
  rm fop-1.1-bin.tar.gz
fi

