# create outputs
#1. Resource group location
#2. Resource group id
#3. Resource group name

#Resource group name
output "location" {
    value = azurerm_resource_group.aks_rg.location
  
}

output "resource_group_id" {
  value = azurerm_resource_group.aks_rg.id
}
output "resource_group_name" {
    value = azurerm_resource_group.aks_rg.name
  
}

#azure aks version datasource
output "versions" {
  value =  data.azurerm_kubernetes_service_versions.current.versions
}
output "latest_version" {
    value = data.azurerm_kubernetes_service_versions.current.latest_version
  
}

output "azure_ad_group_id" {
    value = azuread_group.aks_administrators.id
  
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.name
}
output "aks_cluster_kubernetes_version" {
    value = azurerm_kubernetes_cluster.aks_cluster.kubernetes_version 
  
}

  
