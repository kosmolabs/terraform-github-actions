module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"
  name    = "github-runner"

  ami                    = "ami-0778521d914d23bc1"
  instance_type          = "t2.small"
  key_name               = "cosmolabs"
  monitoring             = false
  vpc_security_group_ids = ["sg-0c645f23a80e13e0b"]
  subnet_id              = "subnet-0274fd252c205834c"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
