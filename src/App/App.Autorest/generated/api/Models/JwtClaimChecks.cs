// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.App.Models
{
    using static Microsoft.Azure.PowerShell.Cmdlets.App.Runtime.Extensions;

    /// <summary>
    /// The configuration settings of the checks that should be made while validating the JWT Claims.
    /// </summary>
    public partial class JwtClaimChecks :
        Microsoft.Azure.PowerShell.Cmdlets.App.Models.IJwtClaimChecks,
        Microsoft.Azure.PowerShell.Cmdlets.App.Models.IJwtClaimChecksInternal
    {

        /// <summary>Backing field for <see cref="AllowedClientApplication" /> property.</summary>
        private System.Collections.Generic.List<string> _allowedClientApplication;

        /// <summary>The list of the allowed client applications.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.App.Origin(Microsoft.Azure.PowerShell.Cmdlets.App.PropertyOrigin.Owned)]
        public System.Collections.Generic.List<string> AllowedClientApplication { get => this._allowedClientApplication; set => this._allowedClientApplication = value; }

        /// <summary>Backing field for <see cref="AllowedGroup" /> property.</summary>
        private System.Collections.Generic.List<string> _allowedGroup;

        /// <summary>The list of the allowed groups.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.App.Origin(Microsoft.Azure.PowerShell.Cmdlets.App.PropertyOrigin.Owned)]
        public System.Collections.Generic.List<string> AllowedGroup { get => this._allowedGroup; set => this._allowedGroup = value; }

        /// <summary>Creates an new <see cref="JwtClaimChecks" /> instance.</summary>
        public JwtClaimChecks()
        {

        }
    }
    /// The configuration settings of the checks that should be made while validating the JWT Claims.
    public partial interface IJwtClaimChecks :
        Microsoft.Azure.PowerShell.Cmdlets.App.Runtime.IJsonSerializable
    {
        /// <summary>The list of the allowed client applications.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.App.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"The list of the allowed client applications.",
        SerializedName = @"allowedClientApplications",
        PossibleTypes = new [] { typeof(string) })]
        System.Collections.Generic.List<string> AllowedClientApplication { get; set; }
        /// <summary>The list of the allowed groups.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.App.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Read = true,
        Create = true,
        Update = true,
        Description = @"The list of the allowed groups.",
        SerializedName = @"allowedGroups",
        PossibleTypes = new [] { typeof(string) })]
        System.Collections.Generic.List<string> AllowedGroup { get; set; }

    }
    /// The configuration settings of the checks that should be made while validating the JWT Claims.
    internal partial interface IJwtClaimChecksInternal

    {
        /// <summary>The list of the allowed client applications.</summary>
        System.Collections.Generic.List<string> AllowedClientApplication { get; set; }
        /// <summary>The list of the allowed groups.</summary>
        System.Collections.Generic.List<string> AllowedGroup { get; set; }

    }
}