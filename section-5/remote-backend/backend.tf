terraform {
  backend "s3" {
    bucket = "hui-bucket-0012"
    key    = "network/terraform.tfstate"
    region = "us-east-1"
  }
}