# Project : Deploy AKS Cluster with Terraform 

module "resourceGroup" {
    source = "../../../modules/resourceGroup"
    Location = var.Location
    namingToFollow = join("-",[lookup(var.LocationMap,var.Location,"ND"),var.Project,"RG",lookup(var.Environments,var.InputEnv),var.App])

}

module "AKS_Cluster" {

    source = "../../../Modules/AKS"
    depends_on = [ module.resourceGroup ]
    namingToFollow = join("",[lookup(var.LocationMap,var.Location,"ND"),var.Project,lookup(var.Environments,var.InputEnv),var.App])
    dns_prefix = "myaks"
    location = module.resourceGroup.instance_location
    resourceGroup = module.resourceGroup.instance_name
  
}
# 