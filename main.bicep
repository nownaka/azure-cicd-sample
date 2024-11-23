// --------------------------------------------------------------------------------
// Params
// --------------------------------------------------------------------------------
param virtualNetworkName string
param addressPrefixes string[]

// --------------------------------------------------------------------------------
// Resources
// --------------------------------------------------------------------------------
resource virtualNetworks 'Microsoft.Network/virtualNetworks@2023-09-01' = {
  name: virtualNetworkName
  properties: {
    addressSpace: {
      addressPrefixes: addressPrefixes
    }
  }
}
