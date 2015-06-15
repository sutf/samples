<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  xmlns:sutf="http://sutf.net">

  <sch:pattern>
    <sch:title>Test pattern</sch:title>

    <!-- In order to save typing when constructing typical document shells it is possible to specify context for test document.
         Prior using such test document it is automatically surrounded by elements specified by @context attribute.
         @context attribute can use only child axis
         Inside @context attribute namespace bindings corresponds to those of Schematron schema (<ns> elements)
         @context can be specified on <sutf:tests> or on <sutf:fail>/<sutf:pass> elements. Closest value has precedence.
         -->    
    
    <!-- By default enclose all inline test documents by <html><body> -->
    <sutf:tests context="/html/body">
      <sutf:fail times="2">
        <h2>Hi there!</h2>
        <marquee>I shouldn't be there</marquee>
      </sutf:fail>
      <!-- Enclose this one test document with <html> only -->
      <sutf:fail times="1" context="/html">
        <body>
          <h1>Hi there!</h1>
          <marquee>I shouldn't be there</marquee>
        </body>
      </sutf:fail>
      <!-- Use the default context from <sutf:tests> element, ie. whole <html><body> is added around -->
      <sutf:pass>
        <h1>Hi there!</h1>
        <div>I shouldn't be there</div>
      </sutf:pass>
    </sutf:tests>
    
    <sch:rule context="body">
      <sch:assert test=".//h1">There has to be at least one H1 heading in the document.</sch:assert>
      <sch:report test=".//marquee">Marquee element is not allowed.</sch:report>
    </sch:rule>
    
  </sch:pattern>
  
</sch:schema>