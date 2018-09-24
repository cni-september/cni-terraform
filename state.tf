terraform {
  backend "s3" {
    bucket = "cni-state-september"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}
