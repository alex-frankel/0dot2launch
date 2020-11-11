targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2020-06-01' = {
  name: '0dot2rg'
  location: 'eastus'
}

module stgMod './storage.bicep' = {
  scope: resourceGroup(rg.name) // can be any valid scope
  name: 'storageDeploy' // name of nested deployment when transpiled
}