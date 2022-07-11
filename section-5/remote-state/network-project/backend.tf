terraform {
  backend "s3" {
    bucket = "hui-bucket-0012"
    key    = "network/eip.tfstate"
    region = "us-east-1"
  }
}