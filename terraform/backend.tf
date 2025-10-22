terraform {
  backend "s3" {
    bucket = "vprofile-terraform-backend"
    key    = "vpro-terraform.tfstate"
    region = "us-east-1"
  }
}