terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            }
    }
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "myec2" {
    ami             = "ami-08df646e18b182346"
    instance_type   = "t2.micro" 
    tags    =   {
        Name    = "myec2-tf"
    }
}
