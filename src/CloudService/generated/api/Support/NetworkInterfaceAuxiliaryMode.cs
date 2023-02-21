// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support
{

    /// <summary>Auxiliary mode of Network Interface resource.</summary>
    public partial struct NetworkInterfaceAuxiliaryMode :
        System.IEquatable<NetworkInterfaceAuxiliaryMode>
    {
        public static Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.NetworkInterfaceAuxiliaryMode Floating = @"Floating";

        public static Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.NetworkInterfaceAuxiliaryMode MaxConnections = @"MaxConnections";

        public static Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.NetworkInterfaceAuxiliaryMode None = @"None";

        /// <summary>
        /// the value for an instance of the <see cref="NetworkInterfaceAuxiliaryMode" /> Enum.
        /// </summary>
        private string _value { get; set; }

        /// <summary>Conversion from arbitrary object to NetworkInterfaceAuxiliaryMode</summary>
        /// <param name="value">the value to convert to an instance of <see cref="NetworkInterfaceAuxiliaryMode" />.</param>
        internal static object CreateFrom(object value)
        {
            return new NetworkInterfaceAuxiliaryMode(global::System.Convert.ToString(value));
        }

        /// <summary>Compares values of enum type NetworkInterfaceAuxiliaryMode</summary>
        /// <param name="e">the value to compare against this instance.</param>
        /// <returns><c>true</c> if the two instances are equal to the same value</returns>
        public bool Equals(Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.NetworkInterfaceAuxiliaryMode e)
        {
            return _value.Equals(e._value);
        }

        /// <summary>
        /// Compares values of enum type NetworkInterfaceAuxiliaryMode (override for Object)
        /// </summary>
        /// <param name="obj">the value to compare against this instance.</param>
        /// <returns><c>true</c> if the two instances are equal to the same value</returns>
        public override bool Equals(object obj)
        {
            return obj is NetworkInterfaceAuxiliaryMode && Equals((NetworkInterfaceAuxiliaryMode)obj);
        }

        /// <summary>Returns hashCode for enum NetworkInterfaceAuxiliaryMode</summary>
        /// <returns>The hashCode of the value</returns>
        public override int GetHashCode()
        {
            return this._value.GetHashCode();
        }

        /// <summary>
        /// Creates an instance of the <see cref="NetworkInterfaceAuxiliaryMode"/> Enum class.
        /// </summary>
        /// <param name="underlyingValue">the value to create an instance for.</param>
        private NetworkInterfaceAuxiliaryMode(string underlyingValue)
        {
            this._value = underlyingValue;
        }

        /// <summary>Returns string representation for NetworkInterfaceAuxiliaryMode</summary>
        /// <returns>A string for this value.</returns>
        public override string ToString()
        {
            return this._value;
        }

        /// <summary>Implicit operator to convert string to NetworkInterfaceAuxiliaryMode</summary>
        /// <param name="value">the value to convert to an instance of <see cref="NetworkInterfaceAuxiliaryMode" />.</param>

        public static implicit operator NetworkInterfaceAuxiliaryMode(string value)
        {
            return new NetworkInterfaceAuxiliaryMode(value);
        }

        /// <summary>Implicit operator to convert NetworkInterfaceAuxiliaryMode to string</summary>
        /// <param name="e">the value to convert to an instance of <see cref="NetworkInterfaceAuxiliaryMode" />.</param>

        public static implicit operator string(Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.NetworkInterfaceAuxiliaryMode e)
        {
            return e._value;
        }

        /// <summary>Overriding != operator for enum NetworkInterfaceAuxiliaryMode</summary>
        /// <param name="e1">the value to compare against <paramref name="e2" /></param>
        /// <param name="e2">the value to compare against <paramref name="e1" /></param>
        /// <returns><c>true</c> if the two instances are not equal to the same value</returns>
        public static bool operator !=(Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.NetworkInterfaceAuxiliaryMode e1, Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.NetworkInterfaceAuxiliaryMode e2)
        {
            return !e2.Equals(e1);
        }

        /// <summary>Overriding == operator for enum NetworkInterfaceAuxiliaryMode</summary>
        /// <param name="e1">the value to compare against <paramref name="e2" /></param>
        /// <param name="e2">the value to compare against <paramref name="e1" /></param>
        /// <returns><c>true</c> if the two instances are equal to the same value</returns>
        public static bool operator ==(Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.NetworkInterfaceAuxiliaryMode e1, Microsoft.Azure.PowerShell.Cmdlets.CloudService.Support.NetworkInterfaceAuxiliaryMode e2)
        {
            return e2.Equals(e1);
        }
    }
}