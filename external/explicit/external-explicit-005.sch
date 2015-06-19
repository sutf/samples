<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  xmlns:sutf="http://sutf.net">

  <!-- It's possible to specifiy how many times test document should make assertions fail -->
  <sch:pattern>
    <sch:title>Test pattern</sch:title>
    
    <sutf:tests>
      <sutf:fail href="test003.xml">
        <sutf:assert>
          <sutf:message from="check-one-h1">Only one H1 level heading is allowed. Your document contains 2 such headings.</sutf:message>
        </sutf:assert>        
      </sutf:fail>
    </sutf:tests>
    
    <sch:rule context="body">
      <sch:assert test="count(.//h1) > 1" id="check-one-h1">Only one H1 level heading is allowed. Your document contains <sch:value-of select="count(.//h1)"/> such headings.</sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
</sch:schema>