terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.65"
        }
    }
    required_version = ">= 1.5.0"
}

provider "aws" {
    region = var.aws_region
    profile = var.aws_profile
}

resource "aws_instance" "myec2" {
    ami = "ami-0dbc3d7bc646e8516"
    instance_type = "t2.micro"
    key_name = "terraform_key_pair"

    tags = {
        Name = "ec2-kevin"
    }
}
