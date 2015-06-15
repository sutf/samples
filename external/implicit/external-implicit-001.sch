<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <!-- Test documents can be assigned implicitly.
       Documents in pass folder must not trigger any assert/report. 
       Documents in fail folder must fail at least once or exact number of times as it's specified inside the filename using (Nx) notation
       Test documents are assigned to pattern/rule/assert/report based on their ID - it must correspond to the start of filename of test document.
       ID is separated by - character from the rest of filename.
       -->
  <sch:pattern id="HTMLTests">
    <sch:title>Test pattern</sch:title>
    
    <sch:rule context="body">
      <sch:assert test=".//h1">There has to be at least one H1 heading in the document.</sch:assert>
      <sch:report test=".//marquee">Marquee element is not allowed.</sch:report>
    </sch:rule>
    
  </sch:pattern>
  
</sch:schema>