<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  xmlns:sutf="http://sutf.net">

  <sch:pattern>
    <sch:title>Test pattern</sch:title>

    <!-- Example of testing for particular error message and dynamically generated value inside it -->
    <!-- Idea is additional <sutf:assert> element. It can contain following child elements:
          * <sutf:times> - equivalent of times attribute on <sutf:fail> for consistency
          * <sutf:message> - expected error message, can contain @from attribute to signal exact assert/report from which message should come from.
                           - if there is no @from then it is sufficient that such error message was produced by any assert/report
      -->

    <sutf:tests>
      <sutf:fail>
        <sutf:assert>
          <sutf:times>1</sutf:times>
          <sutf:message from="check-one-h1">Only one H1 level heading is allowed. Your document contains 2 such headings.</sutf:message>
        </sutf:assert>
        <html>
          <head>
            <title>Test file</title>
          </head>
          <body>
            <h1>Multiple</h1>
            <h1>Headings</h1>
          </body>
        </html>
      </sutf:fail>
    </sutf:tests>
    
    <sch:rule context="body">
      <sch:assert test="count(.//h1) > 1" id="check-one-h1">Only one H1 level heading is allowed. Your document contains <sch:value-of select="count(.//h1)"/> such headings.</sch:assert>
    </sch:rule>
    
  </sch:pattern>
  
</sch:schema>