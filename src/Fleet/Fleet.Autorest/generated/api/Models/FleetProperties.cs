// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Fleet.Models
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Fleet.Runtime.Extensions;

    /// <summary>Fleet properties.</summary>
    public partial class FleetProperties :
        Microsoft.Azure.PowerShell.Cmdlets.Fleet.Models.IFleetProperties,
        Microsoft.Azure.PowerShell.Cmdlets.Fleet.Models.IFleetPropertiesInternal
    {

        /// <summary>Internal Acessors for ProvisioningState</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Fleet.Models.IFleetPropertiesInternal.ProvisioningState { get => this._provisioningState; set { {_provisioningState = value;} } }

        /// <summary>Backing field for <see cref="ProvisioningState" /> property.</summary>
        private string _provisioningState;

        /// <summary>The status of the last operation.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Origin(Microsoft.Azure.PowerShell.Cmdlets.Fleet.PropertyOrigin.Owned)]
        public string ProvisioningState { get => this._provisioningState; }

        /// <summary>Creates an new <see cref="FleetProperties" /> instance.</summary>
        public FleetProperties()
        {

        }
    }
    /// Fleet properties.
    public partial interface IFleetProperties :
        Microsoft.Azure.PowerShell.Cmdlets.Fleet.Runtime.IJsonSerializable
    {
        /// <summary>The status of the last operation.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Fleet.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Read = true,
        Create = false,
        Update = false,
        Description = @"The status of the last operation.",
        SerializedName = @"provisioningState",
        PossibleTypes = new [] { typeof(string) })]
        [global::Microsoft.Azure.PowerShell.Cmdlets.Fleet.PSArgumentCompleterAttribute("Succeeded", "Failed", "Canceled", "Creating", "Updating", "Deleting")]
        string ProvisioningState { get;  }

    }
    /// Fleet properties.
    internal partial interface IFleetPropertiesInternal

    {
        /// <summary>The status of the last operation.</summary>
        [global::Microsoft.Azure.PowerShell.Cmdlets.Fleet.PSArgumentCompleterAttribute("Succeeded", "Failed", "Canceled", "Creating", "Updating", "Deleting")]
        string ProvisioningState { get; set; }

    }
}