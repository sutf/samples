<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  xmlns:sutf="http://sutf.net">
  
  <!-- It's possible to omit number of times assertion failed -->
  <sch:pattern sutf:fail="2x test001.xml
                          test002.xml"
               sutf:pass="test003.xml">
    <sch:title>Test pattern</sch:title>
    
    <sch:rule context="body">
      <sch:assert test=".//h1">There has to be at least one H1 heading in the document.</sch:assert>
      <sch:report test=".//marquee">Marquee element is not allowed.</sch:report>
    </sch:rule>
    
  </sch:pattern>
  
</sch:schema>