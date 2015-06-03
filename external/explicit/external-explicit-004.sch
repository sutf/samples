<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  xmlns:sutf="http://sutf.net">

  <sch:pattern>
    <sch:title>Test pattern</sch:title>
    
    <sch:rule context="body">
      <!-- Tests can be attached to any element, including assert/report -->      
      <sch:assert test=".//h1" sutf:fail="test001.xml" sutf:pass="test003.xml">There has to be at least one H1 heading in the document.</sch:assert>
      <sch:report test=".//marquee" sutf:fail="test001.xml test002.xml">Marquee element is not allowed.</sch:report>
    </sch:rule>
    
  </sch:pattern>
  
</sch:schema>