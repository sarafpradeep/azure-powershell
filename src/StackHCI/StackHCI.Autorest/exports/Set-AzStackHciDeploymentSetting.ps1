
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create a DeploymentSetting
.Description
Create a DeploymentSetting
.Example
Set-AzStackHciDeploymentSetting -ClusterName 'test-cluster' -ResourceGroupName 's-cluster-rg' -SName 'default'

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Models.Api20240401.IDeploymentSetting
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

DEPLOYMENTCONFIGURATIONSCALEUNIT <IScaleUnits[]>: Scale units will contains list of deployment data
  [ClusterAzureServiceEndpoint <String>]: For Azure blob service endpoint type, select either Default or Custom domain. If you selected **Custom domain, enter the domain for the blob service in this format core.windows.net.
  [ClusterCloudAccountName <String>]: Specify the Azure Storage account name for cloud witness for your Azure Stack HCI cluster.
  [ClusterName <String>]: The cluster name provided when preparing Active Directory.
  [ClusterWitnessPath <String>]: Specify the fileshare path for the local witness for your Azure Stack HCI cluster.
  [ClusterWitnessType <String>]: Use a cloud witness if you have internet access and if you use an Azure Storage account to provide a vote on cluster quorum. A cloud witness uses Azure Blob Storage to read or write a blob file and then uses it to arbitrate in split-brain resolution. Only allowed values are 'Cloud', 'FileShare'. 
  [DeploymentDataAdouPath <String>]: The path to the Active Directory Organizational Unit container object prepared for the deployment. 
  [DeploymentDataDomainFqdn <String>]: FQDN to deploy cluster
  [DeploymentDataInfrastructureNetwork <IInfrastructureNetwork[]>]: InfrastructureNetwork config to deploy AzureStackHCI Cluster.
    [DnsServer <String[]>]: IPv4 address of the DNS servers in your environment.
    [Gateway <String>]: Default gateway that should be used for the provided IP address space.
    [IPPool <IIPPools[]>]: Range of IP addresses from which addresses are allocated for nodes within a subnet.
      [EndingAddress <String>]: Ending IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering.
      [StartingAddress <String>]: Starting IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering.
    [SubnetMask <String>]: Subnet mask that matches the provided IP address space.
    [UseDhcp <Boolean?>]: Allows customers to use DHCP for Hosts and Cluster IPs. If not declared, the deployment will default to static IPs. When true, GW and DNS servers are not required
  [DeploymentDataNamingPrefix <String>]: naming prefix to deploy cluster.
  [DeploymentDataPhysicalNode <IPhysicalNodes[]>]: list of physical nodes config to deploy AzureStackHCI Cluster.
    [Ipv4Address <String>]: The IPv4 address assigned to each physical server on your Azure Stack HCI cluster.
    [Name <String>]: NETBIOS name of each physical server on your Azure Stack HCI cluster.
  [DeploymentDataSecret <IEceDeploymentSecrets[]>]: secrets used for cloud deployment.
    [EceSecretName <EceSecrets?>]: Secret name expected for Enterprise Cloud Engine (ECE) deployment.
    [SecretLocation <String>]: Secret URI stored in keyvault.
    [SecretName <String>]: Secret name stored in keyvault.
  [DeploymentDataSecretsLocation <String>]: Azure keyvault endpoint. This property is deprecated from 2023-12-01-preview. Please use secrets property instead.
  [HostNetworkEnableStorageAutoIP <Boolean?>]: Optional parameter required only for 3 Nodes Switchless deployments. This allows users to specify IPs and Mask for Storage NICs when Network ATC is not assigning the IPs for storage automatically.
  [HostNetworkIntent <IIntents[]>]: The network intents assigned to the network reference pattern used for the deployment. Each intent will define its own name, traffic type, adapter names, and overrides as recommended by your OEM.
    [Adapter <String[]>]: Array of network interfaces used for the network intent.
    [AdapterPropertyOverrideJumboPacket <String>]: This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
    [AdapterPropertyOverrideNetworkDirect <String>]: This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
    [AdapterPropertyOverrideNetworkDirectTechnology <String>]: This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation. Expected values are 'iWARP', 'RoCEv2', 'RoCE'
    [Name <String>]: Name of the network intent you wish to create.
    [OverrideAdapterProperty <Boolean?>]: This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
    [OverrideQosPolicy <Boolean?>]: This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
    [OverrideVirtualSwitchConfiguration <Boolean?>]: This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
    [QoPolicyOverrideBandwidthPercentageSmb <String>]: This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
    [QoPolicyOverridePriorityValue8021ActionCluster <String>]: This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
    [QoPolicyOverridePriorityValue8021ActionSmb <String>]: This parameter should only be modified based on your OEM guidance. Do not modify this parameter without OEM validation.
    [TrafficType <String[]>]: List of network traffic types. Only allowed values are 'Compute', 'Storage', 'Management'.
    [VirtualSwitchConfigurationOverrideEnableIov <String>]: Enable IoV for Virtual Switch
    [VirtualSwitchConfigurationOverrideLoadBalancingAlgorithm <String>]: Load Balancing Algorithm for Virtual Switch
  [HostNetworkStorageConnectivitySwitchless <Boolean?>]: Defines how the storage adapters between nodes are connected either switch or switch less..
  [HostNetworkStorageNetwork <IStorageNetworks[]>]: List of StorageNetworks config to deploy AzureStackHCI Cluster.
    [Name <String>]: Name of the storage network.
    [NetworkAdapterName <String>]: Name of the storage network adapter.
    [StorageAdapterIPInfo <IStorageAdapterIPInfo[]>]: List of Storage adapter physical nodes config to deploy AzureStackHCI Cluster.
      [Ipv4Address <String>]: The IPv4 address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
      [PhysicalNode <String>]: storage adapter physical node name.
      [SubnetMask <String>]: The SubnetMask address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
    [VlanId <String>]: ID specified for the VLAN storage network. This setting is applied to the network interfaces that route the storage and VM migration traffic. 
  [NetworkControllerMacAddressPoolStart <String>]: macAddressPoolStart of network controller used for SDN Integration.
  [NetworkControllerMacAddressPoolStop <String>]: macAddressPoolStop of network controller used for SDN Integration.
  [NetworkControllerNetworkVirtualizationEnabled <Boolean?>]: NetworkVirtualizationEnabled of network controller used for SDN Integration.
  [ObservabilityEpisodicDataUpload <Boolean?>]: When set to true, collects log data to facilitate quicker issue resolution.
  [ObservabilityEuLocation <Boolean?>]: Location of your cluster. The log and diagnostic data is sent to the appropriate diagnostics servers depending upon where your cluster resides. Setting this to false results in all data sent to Microsoft to be stored outside of the EU.
  [ObservabilityStreamingDataClient <Boolean?>]: Enables telemetry data to be sent to Microsoft
  [OptionalServiceCustomLocation <String>]: The name of custom location.
  [SbeDeploymentInfoFamily <String>]: SBE family name.
  [SbeDeploymentInfoPublisher <String>]: SBE manifest publisher.
  [SbeDeploymentInfoSbeManifestCreationDate <DateTime?>]: SBE Manifest Creation Date.
  [SbeDeploymentInfoSbeManifestSource <String>]: SBE Manifest Source.
  [SbeDeploymentInfoVersion <String>]: SBE package version.
  [SbePartnerInfoCredentialList <ISbeCredentials[]>]: SBE credentials list for AzureStackHCI cluster deployment.
    [EceSecretName <String>]: secret name expected for Enterprise Cloud Engine (ECE).
    [SecretLocation <String>]: secret URI stored in keyvault.
    [SecretName <String>]: secret name stored in keyvault.
  [SbePartnerInfoPartnerProperty <ISbePartnerProperties[]>]: List of SBE partner properties for AzureStackHCI cluster deployment.
    [Name <String>]: SBE partner property name.
    [Value <String>]: SBE partner property value.
  [SecuritySettingBitlockerBootVolume <Boolean?>]: When set to true, BitLocker XTS_AES 256-bit encryption is enabled for all data-at-rest on the OS volume of your Azure Stack HCI cluster. This setting is TPM-hardware dependent. 
  [SecuritySettingBitlockerDataVolume <Boolean?>]: When set to true, BitLocker XTS-AES 256-bit encryption is enabled for all data-at-rest on your Azure Stack HCI cluster shared volumes.
  [SecuritySettingCredentialGuardEnforced <Boolean?>]: When set to true, Credential Guard is enabled.
  [SecuritySettingDriftControlEnforced <Boolean?>]: When set to true, the security baseline is re-applied regularly.
  [SecuritySettingDrtmProtection <Boolean?>]: By default, Secure Boot is enabled on your Azure HCI cluster. This setting is hardware dependent.
  [SecuritySettingHvciProtection <Boolean?>]: By default, Hypervisor-protected Code Integrity is enabled on your Azure HCI cluster.
  [SecuritySettingSideChannelMitigationEnforced <Boolean?>]: When set to true, all the side channel mitigations are enabled
  [SecuritySettingSmbClusterEncryption <Boolean?>]: When set to true, cluster east-west traffic is encrypted.
  [SecuritySettingSmbSigningEnforced <Boolean?>]: When set to true, the SMB default instance requires sign in for the client and server services.
  [SecuritySettingWdacEnforced <Boolean?>]: WDAC is enabled by default and limits the applications and the code that you can run on your Azure Stack HCI cluster.
  [StorageConfigurationMode <String>]: By default, this mode is set to Express and your storage is configured as per best practices based on the number of nodes in the cluster. Allowed values are 'Express','InfraOnly', 'KeepStorage'
.Link
https://learn.microsoft.com/powershell/module/az.stackhci/set-azstackhcideploymentsetting
#>
function Set-AzStackHciDeploymentSetting {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Models.Api20240401.IDeploymentSetting])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Path')]
    [System.String]
    # The name of the cluster.
    ${ClusterName},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter(Mandatory)]
    [Alias('DeploymentSettingsName')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Path')]
    [System.String]
    # Name of Deployment Setting
    ${SName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    # The value must be an UUID.
    ${SubscriptionId},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Body')]
    [System.String[]]
    # Azure resource ids of Arc machines to be part of cluster.
    ${ArcNodeResourceId},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Models.Api20240401.IScaleUnits[]]
    # Scale units will contains list of deployment data
    # To construct, see NOTES section for DEPLOYMENTCONFIGURATIONSCALEUNIT properties and create a hash table.
    ${DeploymentConfigurationScaleUnit},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Body')]
    [System.String]
    # deployment template version
    ${DeploymentConfigurationVersion},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Support.DeploymentMode])]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Support.DeploymentMode]
    # The deployment mode for cluster deployment.
    ${DeploymentMode},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Support.OperationType])]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Support.OperationType]
    # The intended operation for a cluster.
    ${OperationType},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        if ($null -eq [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion) {
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion = $PSVersionTable.PSVersion.ToString()
        }         
        $preTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        if ($preTelemetryId -eq '') {
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId =(New-Guid).ToString()
            [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.module]::Instance.Telemetry.Invoke('Create', $MyInvocation, $parameterSet, $PSCmdlet)
        } else {
            $internalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
            if ($internalCalledCmdlets -eq '') {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $MyInvocation.MyCommand.Name
            } else {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets += ',' + $MyInvocation.MyCommand.Name
            }
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = 'internal'
        }

        $mapping = @{
            UpdateExpanded = 'Az.StackHCI.private\Set-AzStackHciDeploymentSetting_UpdateExpanded';
        }
        if (('UpdateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $testPlayback = $false
            $PSBoundParameters['HttpPipelinePrepend'] | Foreach-Object { if ($_) { $testPlayback = $testPlayback -or ('Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Runtime.PipelineMock' -eq $_.Target.GetType().FullName -and 'Playback' -eq $_.Target.Mode) } }
            if ($testPlayback) {
                $PSBoundParameters['SubscriptionId'] = . (Join-Path $PSScriptRoot '..' 'utils' 'Get-SubscriptionIdTestSafe.ps1')
            } else {
                $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
            }
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        if ($null -ne $MyInvocation.MyCommand -and [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PromptedPreviewMessageCmdlets -notcontains $MyInvocation.MyCommand.Name -and [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Runtime.MessageAttributeHelper]::ContainsPreviewAttribute($cmdInfo, $MyInvocation)){
            [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.Runtime.MessageAttributeHelper]::ProcessPreviewMessageAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PromptedPreviewMessageCmdlets.Enqueue($MyInvocation.MyCommand.Name)
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }

    finally {
        $backupTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        $backupInternalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
    }

}
end {
    try {
        $steppablePipeline.End()

        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $backupTelemetryId
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $backupInternalCalledCmdlets
        if ($preTelemetryId -eq '') {
            [Microsoft.Azure.PowerShell.Cmdlets.StackHCI.module]::Instance.Telemetry.Invoke('Send', $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        }
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $preTelemetryId

    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
} 
}
