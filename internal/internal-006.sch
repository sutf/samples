<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  xmlns:sutf="http://sutf.net">

  <!-- Abstract patterns can be tested on their instantiation -->

  <sch:pattern abstract="true" id="table">
    <sch:rule context="$table">
      <sch:assert test="$row">A table has at least one row</sch:assert>
    </sch:rule>
    <sch:rule context="$row">
      <sch:assert test="$cell">A table row has at least one cell</sch:assert>
    </sch:rule>
  </sch:pattern>

  <sch:pattern is-a="table">
    <sutf:tests>
      <sutf:fail times="1">
        <table>
          <tr>
            <!-- No cell here -->
          </tr>
        </table>
      </sutf:fail>
      <sutf:pass>
        <table>
          <tr>
            <td>foo</td>
            <td>bar</td>
          </tr>
        </table>
      </sutf:pass>
    </sutf:tests>
    
    <sch:param name="table" value="table"/>
    <sch:param name="row"  value="tr"/>
    <sch:param name="cell"  value="td"/>
  </sch:pattern>
    
</sch:schema>