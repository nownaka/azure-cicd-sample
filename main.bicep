// --------------------------------------------------------------------------------
// Params
// --------------------------------------------------------------------------------
param virtualNetworkName string
param location string = resourceGroup().location
param addressPrefixes string[]

// --------------------------------------------------------------------------------
// Resources
// --------------------------------------------------------------------------------
resource virtualNetworks 'Microsoft.Network/virtualNetworks@2023-09-01' = {
  name: virtualNetworkName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: addressPrefixes
    }
  }
}
