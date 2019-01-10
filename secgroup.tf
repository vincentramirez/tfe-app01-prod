#SECURITY GROUP(s)//-----------------------------------------------------------  

resource "aws_security_group" "sg" {
  vpc_id = "vpc-0c295ab1b7fc7a43f"
  name = "vinnie-sgtest"
  description = "security group that allows ssh and all egress traffic"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"] 
  tags {
      Name = "egress-all-ports"
  }
 }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  tags {
      Name = "allow-ssh"
  }
 }
}
