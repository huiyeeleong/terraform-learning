provider "aws" {
  region     =  "us-west-1"
  assume_role {
    role_arn = ""
    session_name = ""
  }
}

provider "aws" {
  alias      =  "aws02"
  region     =  "ap-south-1"
  profile    =  "account02"
}