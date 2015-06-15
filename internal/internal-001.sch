<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  xmlns:sutf="http://sutf.net">

  <sch:pattern>
    <sch:title>Test pattern</sch:title>

    <!-- Test documents can be inlined inside sutf:tests element.
         Each sutf:fail contains testing document that should fail @times times (@times attribute is optional ) 
         Each sutf:pass contains testing document that should pass
         sutf:tests can be used on pattern or rule not on individual assert/report element
         -->    
    <sutf:tests>
      <sutf:fail times="2">
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
      <sutf:fail times="1">
        <html>
          <head>
            <title>Test file</title>
          </head>
          <body>
            <h1>Hi there!</h1>
            <marquee>I shouldn't be there</marquee>
          </body>
        </html>
      </sutf:fail>
      <sutf:pass>
        <html>
          <head>
            <title>Test file</title>
          </head>
          <body>
            <h1>Hi there!</h1>
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