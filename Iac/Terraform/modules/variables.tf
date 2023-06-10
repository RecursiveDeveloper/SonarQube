variable "sonarqube_vpc_id" {
    type        = string
    description = "VPC id attached to Ec2 instance"
}

variable "sonarqube_instance_ami" {
    type        = string
    description = "EC2 AMI"
}

variable "sonarqube_instance_type" {
    type        = string
    description = "EC2 Instance Type"
}
