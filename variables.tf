# AWS Config

variable "aws_region" {
  default = "eu-west-1"
}
variable "user_data" {
  default = "${file("init.conf")}" 
}
