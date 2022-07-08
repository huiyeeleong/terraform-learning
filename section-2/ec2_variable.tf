resource "aws_instance" "myec2-1" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = var.instancetype
}