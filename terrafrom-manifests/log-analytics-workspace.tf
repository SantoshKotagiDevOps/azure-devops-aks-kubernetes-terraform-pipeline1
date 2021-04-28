# create log analytics workspace
resource "azurerm_log_analytics_workspace" "insights" {
    name                 = "${var.enviornment}-logs-${random_pet.aksrandom.id}"
    location             = azurerm_resource_group.aks_rg.location
    resource_group_name  = azurerm_resource_group.aks_rg.name
    retention_in_days    = 30
  
}