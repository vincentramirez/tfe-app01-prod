#SECURITY GROUP(s)//-----------------------------------------------------------  

variable "vpc" {}

data "aws_vpc" "selected" {
  tags {
    Name = "${var.vpc}"
  }
}

resource "aws_security_group" "sg" {
  vpc_id = "${data.aws_vpc.selected.id}"
  name = "vinnie-sgtest"
  description = "security group that allows ssh and all egress traffic"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"] 
 }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
 }
}
