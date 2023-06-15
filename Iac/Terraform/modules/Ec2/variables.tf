variable "sonarqube_instance_ami" {
    type        = string
    description = "EC2 AMI"
}

variable "sonarqube_instance_type" {
    type        = string
    description = "EC2 Instance Type"
}

variable "sonarqube_vpc_id" {
    type        = string
    description = "Sonarqube vpc"
}

variable "sonarqube_public_subnet_id" {
    type        = string
    description = "sonarqube public subnet id"
}
