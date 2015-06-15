<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  xmlns:sutf="http://sutf.net">

  <sch:pattern>
    <sch:title>Test pattern</sch:title>

    <!-- Testing against particular test document can be temporarily deactivated by using @active="no" -->    
    <sutf:tests>
      <sutf:pass active="no">
        <html>
          <head>
            <title>Test file</title>
          </head>
          <body>
            Hi there! We excluded this document from testing, until we realize where the heading is.
            <div>I shouldn't be there</div>
          </body>
        </html>
      </sutf:pass>
    </sutf:tests>
    
    <sch:rule context="body">
      <sch:assert test=".//h1">There has to be at least one H1 heading in the document.</sch:assert>
      <sch:report test=".//marquee">Marquee element is not allowed.</sch:report>
    </sch:rule>
    
  </sch:pattern>
  
</sch:schema>