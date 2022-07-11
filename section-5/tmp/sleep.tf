terraform {
  backend "s3" {
    bucket = "hui-bucket-0012"
    key    = "network/tmp.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-locking"  
  }
}


resource "time_sleep" "wait_150_seconds" {
  create_duration = "150s"
}