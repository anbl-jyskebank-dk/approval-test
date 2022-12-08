@description('Specifies the location for resources.')
param location string = 'westeurope'

param rgName string

targetScope = 'subscription'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: rgName
  location: location
}

module network 'modules/network.bicep' = {
  scope: resourceGroup
  name: 'networkModule'
  params: {
    location: location
  }
}






