terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami-id
  instance_type = var.instance_type
  tags = {
    Name = var.intance_name
  }
}


output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.ec2_instance.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.ec2_instance.public_ip
}
