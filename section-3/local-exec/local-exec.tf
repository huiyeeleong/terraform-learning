resource "aws_instance" "myec2" {
   ami = "ami-0cff7528ff583bf9a"
   instance_type = "t2.micro"

   provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  }
}