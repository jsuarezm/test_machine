variable "aws_region" {
  default = "us-east-1"
}

variable "aws_profile" {}

variable "prefix" {}

variable "testing_ip" {}

variable "vpc_cidr" {
  default = "10.20.0.0/16"
}

variable "subnets_cidr" {
  default = "10.20.1.0/24"
}

variable "azs" {
  default = "us-east-1a"
}

variable "instance_type" {
  default = "t2.micro"
}