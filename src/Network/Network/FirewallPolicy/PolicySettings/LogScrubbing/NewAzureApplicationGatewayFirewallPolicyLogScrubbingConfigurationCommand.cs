﻿// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using Microsoft.Azure.Commands.Network.Models;
using System.Linq;
using System.Management.Automation;

namespace Microsoft.Azure.Commands.Network
{
    [Cmdlet("New", ResourceManager.Common.AzureRMConstants.AzureRMPrefix + "ApplicationGatewayFirewallPolicyLogScrubbingConfiguration"), OutputType(typeof(PSApplicationGatewayFirewallPolicyLogScrubbingConfiguration))]
    public class NewAzureApplicationGatewayFirewallPolicyLogScrubbingConfigurationCommand : NetworkBaseCmdlet
    {
        [Parameter(
            Mandatory = true,
            HelpMessage = "State of the log scrubbing config. Default value is Enabled")]
        [ValidateNotNullOrEmpty]
        [ValidateSet("Enabled", "Disabled", IgnoreCase = true)]
        public string State { get; set; }

        [Parameter(
            Mandatory = true,
            HelpMessage = "The rules that are applied to the logs for scrubbing.")]
        [ValidateNotNullOrEmpty]
        public PSApplicationGatewayFirewallPolicyLogScrubbingRule[] ScrubbingRule { get; set; }

        public override void ExecuteCmdlet()
        {
            base.ExecuteCmdlet();

            if (!this.MyInvocation.BoundParameters.ContainsKey("State"))
            {
                this.State = "Enabled";
            }

            WriteObject(NewObject());
        }

        protected PSApplicationGatewayFirewallPolicyLogScrubbingConfiguration NewObject()
        {
            return new PSApplicationGatewayFirewallPolicyLogScrubbingConfiguration()
            {
                State = this.State,
                ScrubbingRules = this.ScrubbingRule?.ToList()
            };
        }
    }
}