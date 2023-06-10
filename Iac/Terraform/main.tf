module "resource_group" {
  source = "./modules"

  sonarqube_vpc_id              = var.sonarqube_vpc_id
  sonarqube_instance_ami        = var.sonarqube_instance_ami
  sonarqube_instance_type       = var.sonarqube_instance_type
}
