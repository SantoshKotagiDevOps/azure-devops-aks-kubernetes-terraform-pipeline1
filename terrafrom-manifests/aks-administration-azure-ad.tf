# Create Azure AD group in Active deirectory for AKS admins
resource "azuread_group" "aks_administrators" {
    name = "${azurerm_resource_group.aks_rg.name}-administrators"
    description = "Azure AKS Kubernetes administrators for the $(resource_group_name.aks.rg.name)-cluster"
  
}