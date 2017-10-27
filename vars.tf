# Provider variables
variable "aws_access_key" {
  default = "AKIAJLHFI3M7ALFR7QIA"
}

variable "aws_secret_key" {
  default = "6yfAPb9H/Gzv61Og0Ch/WCSOroXr4u5CwQBBuf+L"
}

variable "aws_region" {
  default = "us-east-1"
}

# S3 variables
variable "s3_bucket_name" {
  default = "bwn-terraform"
}

# VPC and Subnet variables
variable "vpc_prod_cidr" {
  default = "10.0.0.0/16"
}

variable "prod_private_subnet1_cidr" {
  default = "10.0.0.0/24"
}

variable "prod_private_subnet2_cidr" {
  default = "10.0.1.0/24"
}

variable "prod_private_subnet1_az" {
  default = "us-east-1a"
}

variable "prod_private_subnet2_az" {
  default = "us-east-1b"
}

# ELB variables
variable "application_elb_name" {
  default = "bwn-application-elb"
}

variable "application_elb_log_bucket_prefix" {
  default = "elb-logs"
}

# EC2 variables
variable "instance_lc_name" {
  default = "application-lc"
}

variable "instance_lc_ami" {
  default = "ami-8c1be5f6"
}

variable "instance_lc_type" {
  default = "t2.micro"
}

variable "instance_lc_key_name" {
  default = "application"
}

variable "instance_asg_name" {
  default = "application-asg"
}
