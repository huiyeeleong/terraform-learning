data "terraform_remote_state" "myec2" {
  backend = "s3"
  config {
    bucket = "hui-bucket-0012"
    key    = "ec2demo.tfstate"
    region = "us-west-1"
  }
}