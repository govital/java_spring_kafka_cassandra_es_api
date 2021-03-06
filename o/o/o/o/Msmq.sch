<!--
  Schematron Rule Document for Scenario: MSMQ
  -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
    xmlns:mssml="http://schemas.microsoft.com/sml/extensions/2007/03"
    xmlns:mssmlbpa="http://schemas.microsoft.com/sml/bpa/2008/02">

<ns prefix="tns" uri="http://schemas.microsoft.com/mbca/models/msmq/2011/11" />

<pattern>
    <rule context="/tns:MsmqComposite">
      <assert
        mssmlbpa:helpID="InstallOnNonDC"
        mssml:severity="warning"
        mssml:category="mssmlbpa:performance mssmlbpa:advisory mssmlbpa:markupv2"
        test="tns:IsDomainController = 'False'">

        <mssmlbpa:title mssml:locid="InstallOnNonDC_Title"/>
        <mssmlbpa:problem mssml:locid="InstallOnNonDC_Problem"/>
        <mssmlbpa:impact mssml:locid="InstallOnNonDC_Impact"/>
        <mssmlbpa:resolution mssml:locid="InstallOnNonDC_Resolution"/>
        <mssmlbpa:helpTopic>http://go.microsoft.com/fwlink/?LinkId=000000</mssmlbpa:helpTopic>
      </assert>
      <report
          mssmlbpa:helpID="InstallOnNonDC"
          mssml:severity="info"
          mssml:category="mssmlbpa:compliant mssmlbpa:performance mssmlbpa:advisory mssmlbpa:markupv2"
          test="tns:IsDomainController = 'False'">

        <mssmlbpa:title mssml:locid="InstallOnNonDC_Title"/>
        <mssmlbpa:compliant mssml:locid="InstallOnNonDC_Compliant"/>
      </report>
    </rule>
  </pattern>
</schema>
