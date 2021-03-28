provider "aws" {
  // https://releases.hashicorp.com/terraform-provider-aws/
  //version = "2.65"
  region = "us-east-2"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "helloworld" {
  // this does not exist
  //ami = "ami-09dd2e08d601bff67"
  // from EC2 console
  //ami = "ami-089c6f2e3866f0f14"
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  tags = {
    "Name" = "HelloWorld"
  }
}