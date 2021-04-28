# Datasource to get the latest versin of Azure AKS
data "azurerm_kubernetes_service_versions" "current" {
    location        = azurerm_resource_group.aks_rg.location
    include_preview = false

  
}