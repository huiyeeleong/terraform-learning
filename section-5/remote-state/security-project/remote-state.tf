data "terraform_remote_state" "eip" {
  backend = "s3"

  config = {
    bucket = "hui-bucket-0012"
    key    = "network/eip.tfstate"
    region = "us-east-1"
    }
  }