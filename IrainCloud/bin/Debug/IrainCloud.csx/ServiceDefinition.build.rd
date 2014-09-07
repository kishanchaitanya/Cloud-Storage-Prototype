<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="IrainCloud" generation="1" functional="0" release="0" Id="c125619e-48cf-4a90-87e6-a86b02dfe409" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="IrainCloudGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="Irain-M:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/IrainCloud/IrainCloudGroup/LB:Irain-M:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Irain-MInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-MInstances" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.ActivationToken" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.ActivationToken" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.Refresh" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.Refresh" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.Diagnostics" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.Diagnostics" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.WaitForConnectivity" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.WaitForConnectivity" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.EnableDomainJoin" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.EnableDomainJoin" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainFQDN" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainFQDN" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainControllerFQDN" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainControllerFQDN" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainAccountName" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainAccountName" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainPassword" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainPassword" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainOU" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainOU" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.DNSServers" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DNSServers" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.Administrators" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.Administrators" />
          </maps>
        </aCS>
        <aCS name="Irain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainSiteName" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainSiteName" />
          </maps>
        </aCS>
        <aCS name="Irain-M:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="Irain-M:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="Irain-M:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/IrainCloud/IrainCloudGroup/MapIrain-M:?StartupTaskDebugger?" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:Irain-M:Endpoint1">
          <toPorts>
            <inPortMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapIrain-MInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/IrainCloud/IrainCloudGroup/Irain-MInstances" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.ActivationToken" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.ActivationToken" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.Refresh" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.Refresh" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.Diagnostics" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.Diagnostics" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.WaitForConnectivity" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.WaitForConnectivity" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.EnableDomainJoin" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.EnableDomainJoin" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainFQDN" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.DomainFQDN" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainControllerFQDN" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.DomainControllerFQDN" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainAccountName" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.DomainAccountName" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.DomainPassword" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainOU" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.DomainOU" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DNSServers" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.DNSServers" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.Administrators" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.Administrators" />
          </setting>
        </map>
        <map name="MapIrain-M:Microsoft.WindowsAzure.Plugins.Connect.DomainSiteName" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/Microsoft.WindowsAzure.Plugins.Connect.DomainSiteName" />
          </setting>
        </map>
        <map name="MapIrain-M:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapIrain-M:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapIrain-M:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/IrainCloud/IrainCloudGroup/Irain-M/?StartupTaskDebugger?" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="Irain-M" generation="1" functional="0" release="0" software="D:\CloudTest\Irain-M\IrainCloud\bin\Debug\IrainCloud.csx\roles\Irain-M" entryPoint="base\x86\WaHostBootstrapper.exe" parameters="base\x86\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.ActivationToken" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.Refresh" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.Diagnostics" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.WaitForConnectivity" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.EnableDomainJoin" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.DomainFQDN" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.DomainControllerFQDN" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.DomainAccountName" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.DomainPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.DomainOU" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.DNSServers" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.Administrators" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Connect.DomainSiteName" defaultValue="" />
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Irain-M&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Irain-M&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/IrainCloud/IrainCloudGroup/Irain-MInstances" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyID name="Irain-MInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="22080173-b36e-44b3-927d-f9cafab99c7a" ref="Microsoft.RedDog.Contract\ServiceContract\IrainCloudContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="e71f79c8-5f42-4b10-aa27-de7624e4b5b6" ref="Microsoft.RedDog.Contract\Interface\Irain-M:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/IrainCloud/IrainCloudGroup/Irain-M:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>