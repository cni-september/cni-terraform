# AWS Config

variable "aws_region" {
  default = "eu-west-1"
}

variable "ec2_instance_type" {
  default = "t2.small"
}

variable "ec2_key_name" {
  default = "test_cni"
}
