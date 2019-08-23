#EC2 INSTANCE(s)//--------------------------------------------------------------
#Trusted AMI: ami-0cfee17793b08a293
#Trusted Subnet: subnet-<id>

resource "aws_instance" "ec2" {
  count = "1"
  ami           = "ami-0cfee17793b08a293"
  instance_type = "t2.micro"

  # VPC subnet
  #subnet_id = "subnet-05f417996108c1f00"

  # security group
  # vpc_security_group_ids = ["sg-0d1b21350b7259316"]

  # the public SSH key
  key_name = "vinnie"

  # tags
  tags {
   # Name = "vinnie-test-vm"
    owner = "vinnie@hashicorp.com"
    TTL = 1
  }
}
