#EC2 INSTANCE(s)//---------------Test VCS Runs-------------------------------------------
#Trusted AMI: ami-009d6802948d06e52
#Trusted Subnet: subnet-05f417996108c1f5f

resource "aws_instance" "ec2" {
  count = "1"
  ami           = "ami-009d6802948d06e52"
  instance_type = "t2.large"

  # VPC subnet
  #subnet_id = "subnet-015d842f592799509"

  # security group
  # vpc_security_group_ids = ["sg-0d1b21350b7259316"]

  # the public SSH key
  key_name = "vinnie"

  # tags
  tags {
    Name = "vinnie-ec2-${count.index}"
    owner = "vinnie@hashicorp.com"
    TTL = 1
  }
}
