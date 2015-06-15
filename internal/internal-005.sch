<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  xmlns:sutf="http://sutf.net">

  <sch:pattern>
    <sch:title>Test pattern</sch:title>

    <!-- Each inlined test document can be accompanied with a simple text description --> 
    <sutf:tests>
      <sutf:fail times="2" description="Example of completely wrong and obscene document">
        <html>
          <head>
            <title>Test file</title>
          </head>
          <body>
            <h2>Hi there!</h2>
            <marquee>I shouldn't be there</marquee>
          </body>
        </html>
      </sutf:fail>
    </sutf:tests>
    
    <sch:rule context="body">
      <sch:assert test=".//h1">There has to be at least one H1 heading in the document.</sch:assert>
      <sch:report test=".//marquee">Marquee element is not allowed.</sch:report>
    </sch:rule>
    
  </sch:pattern>
  
</sch:schema>