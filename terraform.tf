provider "aws" {
access_key = "${var.accesskey}"
secret_key = "${var.seceratkey}"
region = "${var.region}"
}

#Define ec2 instance
resource "aws_instance" "instance1" {
instance_type = "${var.instancetype}"
key_name = "${var.key}"
security_groups = "${var.securitygroups}"
ami = "${var.imageid}"
tags = {
name = "ubuntu-20.04"
}
}

resource "aws_s3_bucket" "srisree43210" {
  bucket = "${var.awss3bucket}"
  acl    = "${var.acl}"
versioning {
enabled = true
}
}

variable "region" {
default = "us-west-1"
}
variable "accesskey" {
type = string
}

variable "seceratkey" {
type = string
}

variable "imageid" {
default = "ami-01154c8b2e9a14885"
}

variable "key" {
default = "SNC"
}

variable "securitygroups" {
default = ["Terraform-SG"]
}

variable "instancetype" {
default = "t2.micro"
}

variable "awss3bucket" {
default = "srisree3210"
}

variable "acl" {
default = "private"
}
