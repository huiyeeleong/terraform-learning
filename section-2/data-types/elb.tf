# Create a new load balancer
resource "aws_elb" "bar" {
  name               = var.elb_name
  availability_zones = var.az

  access_logs {
    bucket        = "foo"
    bucket_prefix = "bar"
    interval      = 60
  }

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = var.timeout
    target              = "HTTP:8000/"
    interval            = 30
  }


  tags = {
    Name = "foobar-terraform-elb"
  }
}