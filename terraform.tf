provider "aws" {
access_key = "AKIAZYP6DJKMLWO7PWXE"
secret_key = "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"
region = "us-west-1"
}

#Define ec2 instance
resource "aws_instance" "instance1" {
instance_type = "t2.micro"
key_name = "SNC"
security_groups = ["Terraform-SG"]
ami = "ami-01154c8b2e9a14885"
tags = {
name = "ubuntu-20.04"
}
}


resource "aws_s3_bucket" "srisree3217" 
  bucket = "srisree321"
  acl    = "private"
versioning {
enabled = true
}
}

